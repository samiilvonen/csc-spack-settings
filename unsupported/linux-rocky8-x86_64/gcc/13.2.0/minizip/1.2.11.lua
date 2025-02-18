-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:28:19.322731
--
-- minizip@1.2.11%gcc@13.2.0 build_system=autotools patches=7f8df10 arch=linux-rocky8-cascadelake/dypqlca
--

whatis([[Name : minizip]])
whatis([[Version : 1.2.11]])
whatis([[Target : cascadelake]])
whatis([[Short description : C library for zip/unzip via zLib.]])

help([[Name   : minizip]])
help([[Version: 1.2.11]])
help([[Target : cascadelake]])
help()
help([[C library for zip/unzip via zLib.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/minizip-1.2.11-dypqlc/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/minizip-1.2.11-dypqlc/lib", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/minizip-1.2.11-dypqlc/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/minizip-1.2.11-dypqlc/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/minizip-1.2.11-dypqlc/.", ":")

