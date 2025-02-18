-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:29:28.174195
--
-- json-c@0.16%gcc@13.2.0~ipo build_system=cmake build_type=Release generator=make arch=linux-rocky8-cascadelake/fl3zyag
--

whatis([[Name : json-c]])
whatis([[Version : 0.16]])
whatis([[Target : cascadelake]])
whatis([[Short description : A JSON implementation in C.]])

help([[Name   : json-c]])
help([[Version: 0.16]])
help([[Target : cascadelake]])
help()
help([[A JSON implementation in C.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/json-c-0.16-fl3zya/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/json-c-0.16-fl3zya/lib64", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/json-c-0.16-fl3zya/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/json-c-0.16-fl3zya/.", ":")

