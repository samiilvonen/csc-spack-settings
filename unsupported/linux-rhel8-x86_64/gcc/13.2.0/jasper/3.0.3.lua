-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 14:02:16.666752
--
-- jasper@3.0.3%gcc@13.2.0+jpeg~opengl+shared build_system=generic build_type=Release arch=linux-rhel8-cascadelake/ihmverg
--

whatis([[Name : jasper]])
whatis([[Version : 3.0.3]])
whatis([[Target : cascadelake]])
whatis([[Short description : Library for manipulating JPEG-2000 images]])
whatis([[Configure options : --prefix=/appl/spack/v022/install-tree/gcc-13.2.0/jasper-3.0.3-ihmver --enable-libjpeg --disable-opengl --enable-shared --disable-debug]])

help([[Name   : jasper]])
help([[Version: 3.0.3]])
help([[Target : cascadelake]])
help()
help([[Library for manipulating JPEG-2000 images]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("libjpeg-turbo/3.0.0")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jasper-3.0.3-ihmver/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jasper-3.0.3-ihmver/lib64", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jasper-3.0.3-ihmver/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jasper-3.0.3-ihmver/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jasper-3.0.3-ihmver/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jasper-3.0.3-ihmver/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jasper-3.0.3-ihmver/.", ":")
append_path("MANPATH", "", ":")

