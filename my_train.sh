#!/bin/bash

DATA=tandt/truck/

# python train.py \
#     -s ./data/$DATA \
#     -m ./output/truck_improve/  \
#     --iterations 30000 \
#     > train.log 2>&1

# python train.py \
#     -s ./data/$DATA \
#     -m ./output/truck_improve/  \
#     --checkpoint_iterations 30000 \
#     > train.log 2>&1

nsys profile -w true -t cuda,nvtx,osrt,cublas --cuda-memory-usage=true --cudabacktrace=true -x true -f true -o rep_train_30100 \
python train.py \
    -s ./data/$DATA \
    -m ./output/truck_improve/  \
    --start_checkpoint /home/wangkangyu/gaussian_workspace/my/gaussian-splatting/output/truck_improve/chkpnt30000.pth  \
    --iterations 30100 \
    > train_truck_me.log 2>&1


# nsys profile -w true -t cuda,nvtx,osrt,cublas --cuda-memory-usage=true --cudabacktrace=true -x true -f true -o rep_train_500 \
# python train.py \
#     -s ./data/$DATA \
#     -m ./output/truck_improve/  \
#     --iterations 500 \
#     > train.log 2>&1