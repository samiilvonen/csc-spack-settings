-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:27:39.376183
--
-- openjpeg@2.5.0%gcc@13.2.0~codec~ipo build_system=cmake build_type=Release generator=make arch=linux-rocky8-cascadelake/o2lg5yd
--

whatis([[Name : openjpeg]])
whatis([[Version : 2.5.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : OpenJPEG is an open-source JPEG 2000 codec written in C language.]])
whatis([[Configure options : -DBUILD_CODEC:BOOL=OFF -DBUILD_MJ2:BOOL=OFF -DBUILD_THIRDPARTY:BOOL=OFF]])

help([[Name   : openjpeg]])
help([[Version: 2.5.0]])
help([[Target : cascadelake]])
help()
help([[OpenJPEG is an open-source JPEG 2000 codec written in C language. It has
been developed in order to promote the use of JPEG 2000, a still-image
compression standard from the Joint Photographic Experts Group (JPEG).
Since April 2015, it is officially recognized by ISO/IEC and ITU-T as a
JPEG 2000 Reference Software.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/openjpeg-2.5.0-o2lg5y/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/openjpeg-2.5.0-o2lg5y/lib", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/openjpeg-2.5.0-o2lg5y/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/openjpeg-2.5.0-o2lg5y/.", ":")

