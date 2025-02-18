-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:59:45.305640
--
-- libjpeg-turbo@3.0.0%gcc@13.2.0~ipo~jpeg8~partial_decoder+pic build_system=cmake build_type=Release generator=make libs=shared,static arch=linux-rhel8-cascadelake/edxd5g6
--

whatis([[Name : libjpeg-turbo]])
whatis([[Version : 3.0.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : libjpeg-turbo is a fork of the original IJG libjpeg which uses SIMD to accelerate baseline JPEG compression and decompression.]])

help([[Name   : libjpeg-turbo]])
help([[Version: 3.0.0]])
help([[Target : cascadelake]])
help()
help([[libjpeg-turbo is a fork of the original IJG libjpeg which uses SIMD to
accelerate baseline JPEG compression and decompression. libjpeg is a
library that implements JPEG image encoding, decoding and transcoding.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libjpeg-turbo-3.0.0-edxd5g/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libjpeg-turbo-3.0.0-edxd5g/lib64", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libjpeg-turbo-3.0.0-edxd5g/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libjpeg-turbo-3.0.0-edxd5g/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libjpeg-turbo-3.0.0-edxd5g/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libjpeg-turbo-3.0.0-edxd5g/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libjpeg-turbo-3.0.0-edxd5g/.", ":")
append_path("MANPATH", "", ":")

