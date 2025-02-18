-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-07 09:30:02.700770
--
-- gcc-runtime@13.2.0%gcc@13.2.0 build_system=generic arch=linux-rocky8-skylake_avx512/37awf3w
--

whatis([[Name : gcc-runtime]])
whatis([[Version : 13.2.0]])
whatis([[Target : skylake_avx512]])
whatis([[Short description : Package for GCC compiler runtime libraries]])

help([[Name   : gcc-runtime]])
help([[Version: 13.2.0]])
help([[Target : skylake_avx512]])
help()
help([[Package for GCC compiler runtime libraries]])


depends_on("glibc/2.28")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gcc-runtime-13.2.0-37awf3/lib", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gcc-runtime-13.2.0-37awf3/.", ":")

