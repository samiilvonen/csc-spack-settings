-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-23 09:44:14.240458
--
-- libxsmm@1.17%gcc@13.2.0~debug~generator~header-only~large_jit_buffer~shared blas=default build_system=makefile arch=linux-rhel8-cascadelake/coxa56d
--

whatis([[Name : libxsmm]])
whatis([[Version : 1.17]])
whatis([[Target : cascadelake]])
whatis([[Short description : Library for specialized dense and sparse matrix operations, and deep learning primitives.]])

help([[Name   : libxsmm]])
help([[Version: 1.17]])
help([[Target : cascadelake]])
help()
help([[Library for specialized dense and sparse matrix operations, and deep
learning primitives.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxsmm-1.17-coxa56/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxsmm-1.17-coxa56/lib", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxsmm-1.17-coxa56/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxsmm-1.17-coxa56/.", ":")

