-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:56:17.066330
--
-- nasm@2.15.05%gcc@13.2.0 build_system=autotools arch=linux-rhel8-cascadelake/4bu2r37
--

whatis([[Name : nasm]])
whatis([[Version : 2.15.05]])
whatis([[Target : cascadelake]])
whatis([[Short description : NASM (Netwide Assembler) is an 80x86 assembler designed for portability and modularity. It includes a disassembler as well.]])

help([[Name   : nasm]])
help([[Version: 2.15.05]])
help([[Target : cascadelake]])
help()
help([[NASM (Netwide Assembler) is an 80x86 assembler designed for portability
and modularity. It includes a disassembler as well.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/nasm-2.15.05-4bu2r3/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/nasm-2.15.05-4bu2r3/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/nasm-2.15.05-4bu2r3/share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/nasm-2.15.05-4bu2r3/.", ":")
append_path("MANPATH", "", ":")

