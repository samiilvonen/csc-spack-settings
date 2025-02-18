-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 14:02:34.666441
--
-- libtiff@4.5.1%gcc@13.2.0+ccitt~ipo~jbig+jpeg~jpeg12~lerc~libdeflate+logluv~lzma+lzw+next~old-jpeg+packbits~pic~pixarlog+shared+thunder~webp+zlib~zstd build_system=cmake build_type=Release generator=make arch=linux-rhel8-cascadelake/zjw5drh
--

whatis([[Name : libtiff]])
whatis([[Version : 4.5.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : LibTIFF - Tag Image File Format (TIFF) Library and Utilities.]])

help([[Name   : libtiff]])
help([[Version: 4.5.1]])
help([[Target : cascadelake]])
help()
help([[LibTIFF - Tag Image File Format (TIFF) Library and Utilities.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("libjpeg-turbo/3.0.0")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libtiff-4.5.1-zjw5dr/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libtiff-4.5.1-zjw5dr/lib64", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libtiff-4.5.1-zjw5dr/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libtiff-4.5.1-zjw5dr/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libtiff-4.5.1-zjw5dr/.", ":")

