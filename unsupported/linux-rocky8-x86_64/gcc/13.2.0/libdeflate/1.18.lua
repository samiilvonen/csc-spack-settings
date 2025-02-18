-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:29:25.307900
--
-- libdeflate@1.18%gcc@13.2.0~ipo build_system=cmake build_type=Release generator=make arch=linux-rocky8-cascadelake/qetcqmc
--

whatis([[Name : libdeflate]])
whatis([[Version : 1.18]])
whatis([[Target : cascadelake]])
whatis([[Short description : Heavily optimized library for DEFLATE/zlib/gzip compression and decompression]])

help([[Name   : libdeflate]])
help([[Version: 1.18]])
help([[Target : cascadelake]])
help()
help([[Heavily optimized library for DEFLATE/zlib/gzip compression and
decompression]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("gzip/1.13")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libdeflate-1.18-qetcqm/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libdeflate-1.18-qetcqm/lib64", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libdeflate-1.18-qetcqm/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libdeflate-1.18-qetcqm/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libdeflate-1.18-qetcqm/.", ":")

