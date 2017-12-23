#!/usr/bin/env bash

python3 model.py --dataset dataset/$1-radical/dataset.pkl --num-epochs 60 \
--log-dir result/radical/$1 \
--word-embeddings data/radical/radical.vec \
--char-embeddings data/radical/radical.ngram.vec \
--dropout 0.2 \
--learning-rate 0.01 \
--learning-rate-decay 0.9 \
--use-char-rnn \
--char-hidden-dim 200 \
--hidden-dim 300 \
--dynet-seed $RANDOM \
--skip-dev \
${@:2}