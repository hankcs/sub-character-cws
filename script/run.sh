#!/usr/bin/env bash

dataset=$1
config=$2
suffix="character"
example="./script/run.sh pku 1"

echoerr() { echo "$@" 1>&2; }
die() { echo "$@" 1>&2; exit; }

if [[ "$config" -gt 0 && "$config" -lt 7  ]]
then
    echo "Running config #$config on $dataset..."
else
	die "Please provide an integer between 1 and 6 as model configuration like: $example"
fi

if [ ${config} -gt 2 ]; then
    suffix="radical"
fi


if [ ! -d "dataset/$dataset-$suffix" ]; then
	python3 convert_corpus.py --dataset $dataset --type ${suffix}
	script/make-${suffix}.sh ${dataset}
fi

case "$config" in

1)  echo "baseline"
	script/train-baseline.sh ${dataset} ${@:3}
    ;;
2)  echo  "+subchar"
	script/train-subchar.sh ${dataset} ${@:3}
    ;;
3)  echo  "+radical"
	script/train-radical.sh ${dataset} ${@:3}
    ;;
4)  echo  "+radical -char"
	script/train-radical-nochar.sh ${dataset} ${@:3}
    ;;
5) echo  "+radical +tie"
   script/train-radical-tie.sh ${dataset} ${@:3}
   ;;
6) echo "+radical +tie +bigram"
   script/train-radical-tie.sh ${dataset} --bigram ${@:3}
   ;;
esac