# Faster CUDA kernel for 3D Gaussian Splatting

This repository is for accelerating 3D Gaussian Splatting, originally developed by Inria and the Max Planck Institut for Informatik (MPII). The source code is from the original [repo](https://github.com/graphdeco-inria/gaussian-splatting). 

My goal is to improve the training time and rendering time with efficient cuda kernels. And the efficient cuda kernels are from my implementation [repo](https://github.com/Kangkang-wky/diff-gaussian-rasterization).

## Aim

Considering that the Differential Gaussian Rasterization is a common component in 3D Gaussian Splatting, it is necessary to optimize it. Although 3D Gaussian is much faster than traditional Nerf implicit expression methods, training and rendering in large scenes are still very time-consuming in 3d gaussian-splatting.

My initial goal is to compress the training time of tandb/truck(the official data set) under 7000 iterations to less than 1 minute by optimizing the cuda kernel, while optimizing the rendering time as much as possible. In the future, I will consider the optimization of larger-scale data sets.

Guaranteeing training effects and numerical accuracy is the first priority. Based on this, I hope to just optimize kernel instead of modify calculation to bring faster training and rendering for people who use Differential Gaussian Rasterization.


## Improvement

Using faster CUDA kernel to accelerate forward and backward in 3D reconstruction with Differential Gaussian Rasterization

Insight:

Through nsight system, you can notice that rendercuda kernel takes a lot of time in forward and backward, as well as the concat kernel before the rasterizer.

## Performance

Currently, end-to-end time improvement has been achieved, with 1.5x faster under 7000 iterations than original implementation, 1.2x faster under 30000 iterations, 6-8x in backward rendercuda kernel in training, which are tested in A100.

## 🚫 Commercial Use Disclaimer

The materials, code, and assets within this repository are intended solely for educational, training, or research purposes. They may not be utilized for commercial activities without explicit authorization. Any unauthorized commercial usage, distribution, or licensing of this repository's content is strictly forbidden. I am not the license holder for the original implementation. This is derived work. For detailed terms, please refer to the license section.

## Citation and References

If you utilize this software or present results obtained using it, please reference the original work: Kerbl, Bernhard; Kopanas, Georgios; Leimkühler, Thomas; Drettakis, George (2023). 3D Gaussian Splatting for Real-Time Radiance Field Rendering. ACM Transactions on Graphics, 42(4).

This will ensure the original authors receive the recognition they deserve.