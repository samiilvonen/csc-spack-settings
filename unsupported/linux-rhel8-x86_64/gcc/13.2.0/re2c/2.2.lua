-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-23 09:32:22.108672
--
-- re2c@2.2%gcc@13.2.0 build_system=generic arch=linux-rhel8-cascadelake/mgu54qx
--

whatis([[Name : re2c]])
whatis([[Version : 2.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : re2c: a free and open-source lexer generator for C and C++]])
whatis([[Configure options : --disable-benchmarks --disable-debug --disable-dependency-tracking --disable-docs --disable-lexers --disable-libs --enable-golang]])

help([[Name   : re2c]])
help([[Version: 2.2]])
help([[Target : cascadelake]])
help()
help([[re2c: a free and open-source lexer generator for C and C++]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/re2c-2.2-mgu54q/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/re2c-2.2-mgu54q/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/re2c-2.2-mgu54q/share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/re2c-2.2-mgu54q/.", ":")
append_path("MANPATH", "", ":")

