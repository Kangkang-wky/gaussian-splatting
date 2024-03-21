#!/bin/bash

DATA=tandt/truck/

# python render.py \
#     -s ./data/$DATA \
#     -m ./output/truck_improve/ \
#     -r 1  \
#     > render.log 2>&1



nsys profile -w true -t cuda,nvtx,osrt,cublas --cuda-memory-usage=true --cudabacktrace=true -x true -f true -o rep_renderCUDA_improve \
/home/wangkangyu/miniconda3/envs/gaussian_splatting/bin/python render.py \
    -s ./data/$DATA \
    -m ./output/truck_improve/ \
    -r 1  \
    > render.log 2>&1

# sudo /home/wangkangyu/cuda_version/usr/local/cuda-11.7.0/bin/ncu --set full --kernel-name renderCUDA -o rep_kernel_renderCUDA \
# /home/wangkangyu/miniconda3/envs/gaussian_splatting/bin/python render.py \
#     -s ./data/$DATA \
#     -m ./output/truck_improve/ \
#     -r 1  \
#     > render.log 2>&1

# python render.py \
#     -s ./data/$DATA \
#     -m ./output/truck_improve/ \
#     -r 1  \
#     > render.log 2>&1

# python train.py \
#     -s ./data/$DATA \
#     -m ./output/truck_improve/  \
#     --iterations 30000 \
#     > train.log 2>&1



# ncu --set full --kernel-name renderCUDA -o test_7000 \
# python render.py \
#     -s ./data/$DATA \
#     -m ./output/truck_improve/ \
#     -r 1  \
#     > render.log 2>&1