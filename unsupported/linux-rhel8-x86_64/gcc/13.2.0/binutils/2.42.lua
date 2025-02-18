-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-28 14:22:00.716261
--
-- binutils@2.42%gcc@13.2.0~gas+gold~gprofng+headers~interwork+ld~libiberty~lto~nls~pgo+plugins build_system=autotools compress_debug_sections=zlib libs=shared,static arch=linux-rhel8-cascadelake/vlckfux
--

whatis([[Name : binutils]])
whatis([[Version : 2.42]])
whatis([[Target : cascadelake]])
whatis([[Short description : GNU binutils, which contain the linker, assembler, objdump and others]])

help([[Name   : binutils]])
help([[Version: 2.42]])
help([[Target : cascadelake]])
help()
help([[GNU binutils, which contain the linker, assembler, objdump and others]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/binutils-2.42-vlckfu/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/binutils-2.42-vlckfu/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/binutils-2.42-vlckfu/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/binutils-2.42-vlckfu/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/binutils-2.42-vlckfu/share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/binutils-2.42-vlckfu/.", ":")
append_path("MANPATH", "", ":")

