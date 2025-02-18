-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:58:42.812514
--
-- flex@2.6.3%gcc@13.2.0+lex~nls build_system=autotools arch=linux-rhel8-cascadelake/2abqu6u
--

whatis([[Name : flex]])
whatis([[Version : 2.6.3]])
whatis([[Target : cascadelake]])
whatis([[Short description : Flex is a tool for generating scanners.]])
whatis([[Configure options : --disable-nls]])

help([[Name   : flex]])
help([[Version: 2.6.3]])
help([[Target : cascadelake]])
help()
help([[Flex is a tool for generating scanners.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/flex-2.6.3-2abqu6/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/flex-2.6.3-2abqu6/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/flex-2.6.3-2abqu6/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/flex-2.6.3-2abqu6/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/flex-2.6.3-2abqu6/share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/flex-2.6.3-2abqu6/.", ":")
append_path("MANPATH", "", ":")

