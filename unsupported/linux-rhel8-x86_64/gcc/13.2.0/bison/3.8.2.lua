-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:57:45.991328
--
-- bison@3.8.2%gcc@13.2.0~color build_system=autotools arch=linux-rhel8-cascadelake/sqa2bll
--

whatis([[Name : bison]])
whatis([[Version : 3.8.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : Bison is a general-purpose parser generator that converts an annotated context-free grammar into a deterministic LR or generalized LR (GLR) parser employing LALR(1) parser tables.]])

help([[Name   : bison]])
help([[Version: 3.8.2]])
help([[Target : cascadelake]])
help()
help([[Bison is a general-purpose parser generator that converts an annotated
context-free grammar into a deterministic LR or generalized LR (GLR)
parser employing LALR(1) parser tables.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/bison-3.8.2-sqa2bl/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/bison-3.8.2-sqa2bl/share/man", ":")
prepend_path("ACLOCAL_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/bison-3.8.2-sqa2bl/share/aclocal", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/bison-3.8.2-sqa2bl/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/bison-3.8.2-sqa2bl/share/man", ":")
prepend_path("ACLOCAL_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/bison-3.8.2-sqa2bl/share/aclocal", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/bison-3.8.2-sqa2bl/.", ":")
append_path("MANPATH", "", ":")

