-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-23 10:17:54.903411
--
-- dbcsr@2.6.0%gcc@13.2.0~cuda~cuda_arch_35_k20x~examples~ipo+mpi~mpi_f08~opencl+openmp~rocm+shared build_system=cmake build_type=Release generator=ninja smm=libxsmm arch=linux-rhel8-cascadelake/5ik327p
--

whatis([[Name : dbcsr]])
whatis([[Version : 2.6.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : Distributed Block Compressed Sparse Row matrix library.]])
whatis([[Configure options : -DUSE_SMM=libxsmm -DUSE_MPI:BOOL=ON -DUSE_OPENMP:BOOL=ON -DWITH_C_API:BOOL=ON -DBLAS_FOUND=true -DBLAS_LIBRARIES=/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_scalapack_lp64.so;/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_cdft_core.so;/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_gf_lp64.so;/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_tbb_thread.so;/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_core.so;/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_blacs_openmpi_lp64.so;/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/lib/libmpi.so;/lib64/libpthread.so;/lib64/libm.so;/lib64/libdl.so -DLAPACK_FOUND=true -DLAPACK_LIBRARIES=/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_scalapack_lp64.so;/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_cdft_core.so;/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_gf_lp64.so;/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_tbb_thread.so;/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_core.so;/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_blacs_openmpi_lp64.so;/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/lib/libmpi.so;/lib64/libpthread.so;/lib64/libm.so;/lib64/libdl.so -DBUILD_SHARED_LIBS:BOOL=ON -DWITH_EXAMPLES:BOOL=OFF]])

help([[Name   : dbcsr]])
help([[Version: 2.6.0]])
help([[Target : cascadelake]])
help()
help([[Distributed Block Compressed Sparse Row matrix library.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("intel-oneapi-mkl/2024.0.0")
depends_on("libxsmm/1.17")
depends_on("openmpi/5.0.5")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/dbcsr-2.6.0-5ik327/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/dbcsr-2.6.0-5ik327/lib64", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/dbcsr-2.6.0-5ik327/.", ":")

