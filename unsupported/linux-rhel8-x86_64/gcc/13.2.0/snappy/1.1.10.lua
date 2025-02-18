-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 14:00:08.412719
--
-- snappy@1.1.10%gcc@13.2.0~ipo+pic+shared build_system=cmake build_type=Release generator=make arch=linux-rhel8-cascadelake/nhr6w6h
--

whatis([[Name : snappy]])
whatis([[Version : 1.1.10]])
whatis([[Target : cascadelake]])
whatis([[Short description : A fast compressor/decompressor: https://code.google.com/p/snappy]])
whatis([[Configure options : -DCMAKE_INSTALL_LIBDIR:STRING=/appl/spack/v022/install-tree/gcc-13.2.0/snappy-1.1.10-nhr6w6/lib -DBUILD_SHARED_LIBS:BOOL=ON -DSNAPPY_BUILD_TESTS:BOOL=OFF -DSNAPPY_BUILD_BENCHMARKS:STRING=OFF]])

help([[Name   : snappy]])
help([[Version: 1.1.10]])
help([[Target : cascadelake]])
help()
help([[A fast compressor/decompressor: https://code.google.com/p/snappy]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/snappy-1.1.10-nhr6w6/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/snappy-1.1.10-nhr6w6/lib", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/snappy-1.1.10-nhr6w6/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/snappy-1.1.10-nhr6w6/.", ":")

