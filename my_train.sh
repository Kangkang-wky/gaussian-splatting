#!/bin/bash

DATA=tandt/truck/

python train.py \
    -s ./data/$DATA \
    -m ./output/truck_improve/  \
    --iterations 30000 \
    > train.log 2>&1