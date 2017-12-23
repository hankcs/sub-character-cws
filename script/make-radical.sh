#!/usr/bin/env bash

python3 ./make_dataset.py --training-data  data/$1/radical/train-all.txt --dev-data data/$1/radical/dev.txt \
--test-data data/$1/radical/test.txt -o dataset/$1-radical/dataset.pkl