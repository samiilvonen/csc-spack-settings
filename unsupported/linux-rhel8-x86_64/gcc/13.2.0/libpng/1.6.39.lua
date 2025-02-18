-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:59:19.604292
--
-- libpng@1.6.39%gcc@13.2.0~ipo~pic build_system=cmake build_type=Release generator=make libs=shared,static arch=linux-rhel8-cascadelake/2gb7kez
--

whatis([[Name : libpng]])
whatis([[Version : 1.6.39]])
whatis([[Target : cascadelake]])
whatis([[Short description : libpng is the official PNG reference library.]])

help([[Name   : libpng]])
help([[Version: 1.6.39]])
help([[Target : cascadelake]])
help()
help([[libpng is the official PNG reference library.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libpng-1.6.39-2gb7ke/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libpng-1.6.39-2gb7ke/lib", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libpng-1.6.39-2gb7ke/lib64", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libpng-1.6.39-2gb7ke/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libpng-1.6.39-2gb7ke/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libpng-1.6.39-2gb7ke/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libpng-1.6.39-2gb7ke/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libpng-1.6.39-2gb7ke/.", ":")
append_path("MANPATH", "", ":")

