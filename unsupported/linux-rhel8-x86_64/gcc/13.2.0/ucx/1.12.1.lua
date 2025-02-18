-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 11:38:43.556230
--
-- ucx@1.12.1%gcc@13.2.0~assertions~backtrace_detail~cma~cuda~dc~debug~dm+examples~gdrcopy~gtest~ib_hw_tm~java~knem~logging~mlx5_dv+numa+openmp+optimizations~parameter_checking+pic~rc~rdmacm~rocm+thread_multiple~ucg~ud~verbs~vfs~xpmem build_system=autotools libs=shared,static opt=3 simd=auto arch=linux-rhel8-cascadelake/t7s5dzf
--

whatis([[Name : ucx]])
whatis([[Version : 1.12.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : a communication library implementing high-performance messaging for MPI/PGAS frameworks]])
whatis([[Configure options : unknown, software installed outside of Spack]])

help([[Name   : ucx]])
help([[Version: 1.12.1]])
help([[Target : cascadelake]])
help()
help([[a communication library implementing high-performance messaging for
MPI/PGAS frameworks]])



prepend_path("CPATH", "/appl/opt/ucx/1.12.1/include", ":")
prepend_path("LIBRARY_PATH", "/appl/opt/ucx/1.12.1/lib", ":")
prepend_path("PATH", "/appl/opt/ucx/1.12.1/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/opt/ucx/1.12.1/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/opt/ucx/1.12.1/.", ":")

