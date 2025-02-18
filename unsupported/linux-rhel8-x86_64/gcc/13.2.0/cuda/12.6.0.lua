-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-27 15:25:21.364425
--
-- cuda@12.6.0%gcc@13.2.0~allow-unsupported-compilers~dev build_system=generic arch=linux-rhel8-cascadelake/y4hqsnc
--

whatis([[Name : cuda]])
whatis([[Version : 12.6.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : CUDA is a parallel computing platform and programming model invented by NVIDIA. It enables dramatic increases in computing performance by harnessing the power of the graphics processing unit (GPU).]])

help([[Name   : cuda]])
help([[Version: 12.6.0]])
help([[Target : cascadelake]])
help()
help([[CUDA is a parallel computing platform and programming model invented by
NVIDIA. It enables dramatic increases in computing performance by
harnessing the power of the graphics processing unit (GPU). Note: This
package does not currently install the drivers necessary to run CUDA.
These will need to be installed manually. See:
https://docs.nvidia.com/cuda/ for details.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cuda-12.6.0-y4hqsn/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cuda-12.6.0-y4hqsn/lib64", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cuda-12.6.0-y4hqsn/bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cuda-12.6.0-y4hqsn/.", ":")
setenv("CUDA_HOME", "/appl/spack/v022/install-tree/gcc-13.2.0/cuda-12.6.0-y4hqsn")
setenv("NVHPC_CUDA_HOME", "/appl/spack/v022/install-tree/gcc-13.2.0/cuda-12.6.0-y4hqsn")

