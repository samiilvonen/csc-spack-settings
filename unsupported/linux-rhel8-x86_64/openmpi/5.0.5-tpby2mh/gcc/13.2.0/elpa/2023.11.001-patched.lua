-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-23 09:43:24.775601
--
-- elpa@2023.11.001-patched%gcc@13.2.0~cuda~gpu_streams+mpi+openmp~rocm build_system=autotools arch=linux-rhel8-cascadelake/ty7vtf7
--

whatis([[Name : elpa]])
whatis([[Version : 2023.11.001-patched]])
whatis([[Target : cascadelake]])
whatis([[Short description : Eigenvalue solvers for Petaflop-Applications (ELPA)]])
whatis([[Configure options : --with-mpi --enable-sse-kernels --enable-avx-kernels --enable-avx2-kernels --enable-avx512-kernels --disable-sve128-kernels --disable-sve256-kernels --disable-sve512-kernels CFLAGS=-O3 FCFLAGS=-O3 -ffree-line-length-none --disable-nvidia-gpu-kernels --disable-amd-gpu-kernels --enable-openmp LDFLAGS=-L/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib -L/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/lib -L/lib64 -L/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib -L/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/lib -L/lib64 LIBS=-lmkl_scalapack_lp64 -lmkl_cdft_core -lmkl_gf_lp64 -lmkl_tbb_thread -lmkl_core -lmkl_blacs_openmpi_lp64 -lmpi -lpthread -lm -ldl -lmkl_scalapack_lp64 -lmkl_cdft_core -lmkl_gf_lp64 -lmkl_tbb_thread -lmkl_core -lmkl_blacs_openmpi_lp64 -lmpi -lpthread -lm -ldl CC=/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/bin/mpicc CXX=/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/bin/mpic++ FC=/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/bin/mpif90 SCALAPACK_LDFLAGS=/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_scalapack_lp64.so /appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_cdft_core.so /appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_gf_lp64.so /appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_tbb_thread.so /appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_core.so /appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib/libmkl_blacs_openmpi_lp64.so /appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/lib/libmpi.so /lib64/libpthread.so /lib64/libm.so /lib64/libdl.so --disable-silent-rules --without-threading-support-check-during-build]])

help([[Name   : elpa]])
help([[Version: 2023.11.001-patched]])
help([[Target : cascadelake]])
help()
help([[Eigenvalue solvers for Petaflop-Applications (ELPA)]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("intel-oneapi-mkl/2024.0.0")
depends_on("openmpi/5.0.5")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/elpa-2023.11.001-patched-ty7vtf/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/elpa-2023.11.001-patched-ty7vtf/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/elpa-2023.11.001-patched-ty7vtf/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/elpa-2023.11.001-patched-ty7vtf/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/elpa-2023.11.001-patched-ty7vtf/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/elpa-2023.11.001-patched-ty7vtf/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/elpa-2023.11.001-patched-ty7vtf/.", ":")
append_path("MANPATH", "", ":")

