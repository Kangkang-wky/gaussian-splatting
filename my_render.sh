#!/bin/bash

DATA=tandt/truck/

python render.py \
    -s ./data/$DATA \
    -m ./output/truck_improve/ \
    -r 1  \
    > render.log 2>&1

# python train.py \
#     -s ./data/$DATA \
#     -m ./output/truck_improve/  \
#     --iterations 30000 \
#     > train.log 2>&1

# ncu --set full --kernel-name renderCUDA -o test_10 \
# python render.py \
#     -s ./data/$DATA \
#     -m ./output/truck_improve/ \
#     -r 1  \
#     > render.log 2>&1

# ncu --set full --kernel-name renderCUDA -o test_7000 \
# python render.py \
#     -s ./data/$DATA \
#     -m ./output/truck_improve/ \
#     -r 1  \
#     > render.log 2>&1