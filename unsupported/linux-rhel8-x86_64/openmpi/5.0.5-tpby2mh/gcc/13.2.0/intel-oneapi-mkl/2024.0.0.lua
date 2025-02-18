-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:34:34.514774
--
-- intel-oneapi-mkl@2024.0.0%gcc@13.2.0+cluster+envmods~ilp64+shared build_system=generic mpi_family=openmpi threads=tbb arch=linux-rhel8-cascadelake/rm55cl7
--

whatis([[Name : intel-oneapi-mkl]])
whatis([[Version : 2024.0.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : Intel oneAPI Math Kernel Library (Intel oneMKL; formerly Intel Math Kernel Library or Intel MKL), is a library of optimized math routines for science, engineering, and financial applications. Core math functions include BLAS, LAPACK, ScaLAPACK, sparse solvers, fast Fourier transforms, and vector math.]])

help([[Name   : intel-oneapi-mkl]])
help([[Version: 2024.0.0]])
help([[Target : cascadelake]])
help()
help([[Intel oneAPI Math Kernel Library (Intel oneMKL; formerly Intel Math
Kernel Library or Intel MKL), is a library of optimized math routines
for science, engineering, and financial applications. Core math
functions include BLAS, LAPACK, ScaLAPACK, sparse solvers, fast Fourier
transforms, and vector math. LICENSE INFORMATION: By downloading and
using this software, you agree to the terms and conditions of the
software license agreements at https://intel.ly/393CijO.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("intel-tbb/2021.9.0")
depends_on("openmpi/5.0.5")

prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/.", ":")
prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/include:", ":")
prepend_path("LD_LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib:", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/:", ":")
setenv("MKLROOT", "/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0")
prepend_path("NLSPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/share/locale/%l_%t/%N:", ":")
append_path("CMAKE_PREFIX_PATH", "/appl/spack/syslibs", ":")
append_path("CMAKE_PREFIX_PATH", "/appl/spack/syslibs", ":")
append_path("CMAKE_PREFIX_PATH", "/appl/spack/syslibs", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/cmake", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/bin/", ":")
append_path("PKG_CONFIG_PATH", "/appl/spack/syslibs/lib64/pkgconfig", ":")
append_path("PKG_CONFIG_PATH", "/appl/spack/syslibs/lib64/pkgconfig", ":")
append_path("PKG_CONFIG_PATH", "/appl/spack/syslibs/lib64/pkgconfig", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/pkgconfig", ":")

