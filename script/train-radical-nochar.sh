#!/usr/bin/env bash

python3 model.py --dataset dataset/$1-radical/dataset.pkl --num-epochs 60 \
--log-dir result/radical-nochar/$1 \
--no-we \
--char-embeddings data/radical/radical.ngram.vec \
--dropout 0.2 \
--learning-rate 0.01 \
--learning-rate-decay 0.9 \
--use-char-rnn \
--char-hidden-dim 200 \
--hidden-dim 200 \
--dynet-seed $RANDOM \
--skip-dev \
${@:2}