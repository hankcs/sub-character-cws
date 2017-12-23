#!/usr/bin/env bash

python3 model.py --dataset dataset/$1-character/dataset.pkl --num-epochs 60 \
--word-embeddings data/character/character.vec \
--log-dir result/baseline/$1 \
--dropout 0.2 \
--learning-rate 0.01 \
--learning-rate-decay 0.9 \
--hidden-dim 100 \
--dynet-seed $RANDOM \
--skip-dev \
${@:2}