-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:26:18.926831
--
-- keyutils@1.6.1%gcc@13.2.0 build_system=makefile arch=linux-rocky8-cascadelake/uk5qz56
--

whatis([[Name : keyutils]])
whatis([[Version : 1.6.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : These tools are used to control the key management system built into the Linux kernel.]])

help([[Name   : keyutils]])
help([[Version: 1.6.1]])
help([[Target : cascadelake]])
help()
help([[These tools are used to control the key management system built into the
Linux kernel.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/keyutils-1.6.1-uk5qz5/include", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/keyutils-1.6.1-uk5qz5/man", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/keyutils-1.6.1-uk5qz5/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/keyutils-1.6.1-uk5qz5/.", ":")
append_path("MANPATH", "", ":")

