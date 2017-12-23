#!/usr/bin/env bash

python3 model.py --dataset dataset/$1-radical/dataset.pkl --num-epochs 60 \
--word-embeddings data/radical/radical.vec \
--log-dir result/subchar/$1 \
--dropout 0.2 \
--learning-rate 0.01 \
--learning-rate-decay 0.9 \
--hidden-dim 100 \
--dynet-seed $RANDOM \
--skip-dev \
${@:2}