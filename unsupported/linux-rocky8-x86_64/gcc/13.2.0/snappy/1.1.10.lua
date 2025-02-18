-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:28:32.734566
--
-- snappy@1.1.10%gcc@13.2.0~ipo+pic~shared build_system=cmake build_type=Release generator=make arch=linux-rocky8-cascadelake/ao6m2gy
--

whatis([[Name : snappy]])
whatis([[Version : 1.1.10]])
whatis([[Target : cascadelake]])
whatis([[Short description : A fast compressor/decompressor: https://code.google.com/p/snappy]])
whatis([[Configure options : -DCMAKE_INSTALL_LIBDIR:STRING=/appl/spack/v022/install-tree/gcc-13.2.0/snappy-1.1.10-ao6m2g/lib -DBUILD_SHARED_LIBS:BOOL=OFF -DSNAPPY_BUILD_TESTS:BOOL=OFF -DSNAPPY_BUILD_BENCHMARKS:STRING=OFF]])

help([[Name   : snappy]])
help([[Version: 1.1.10]])
help([[Target : cascadelake]])
help()
help([[A fast compressor/decompressor: https://code.google.com/p/snappy]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/snappy-1.1.10-ao6m2g/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/snappy-1.1.10-ao6m2g/lib", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/snappy-1.1.10-ao6m2g/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/snappy-1.1.10-ao6m2g/.", ":")

