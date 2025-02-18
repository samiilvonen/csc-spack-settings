-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:30:36.903427
--
-- arrow@14.0.2%gcc@13.2.0~brotli~compute~cuda~gandiva~glog~hdfs+ipc~ipo~jemalloc~lz4~orc~parquet~python+shared~snappy~tensorflow~zlib~zstd build_system=cmake build_type=Release generator=make arch=linux-rocky8-cascadelake/j52dt46
--

whatis([[Name : arrow]])
whatis([[Version : 14.0.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : A cross-language development platform for in-memory data.]])
whatis([[Configure options : -DARROW_DEPENDENCY_SOURCE=SYSTEM -DARROW_NO_DEPRECATED_API=ON -DBUILD_SHARED:STRING=ON -DARROW_COMPUTE:BOOL=OFF -DARROW_CUDA:BOOL=OFF -DARROW_GANDIVA:BOOL=OFF -DARROW_GLOG:BOOL=OFF -DARROW_HDFS:BOOL=OFF -DARROW_IPC:BOOL=ON -DARROW_JEMALLOC:BOOL=OFF -DARROW_ORC:BOOL=OFF -DARROW_PARQUET:BOOL=OFF -DARROW_PYTHON:BOOL=OFF -DARROW_TENSORFLOW:BOOL=OFF -DARROW_WITH_BROTLI:BOOL=OFF -DARROW_WITH_LZ4:BOOL=OFF -DARROW_WITH_SNAPPY:BOOL=OFF -DARROW_WITH_ZLIB:BOOL=OFF -DARROW_WITH_ZSTD:BOOL=OFF -DARROW_WITH_RE2:BOOL=OFF -DARROW_WITH_UTF8PROC:BOOL=OFF]])

help([[Name   : arrow]])
help([[Version: 14.0.2]])
help([[Target : cascadelake]])
help()
help([[A cross-language development platform for in-memory data. This package
contains the C++ bindings.]])


depends_on("boost/1.85.0")
depends_on("flatbuffers/24.3.7")
depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("openssl/1.1.1k")
depends_on("rapidjson/1.2.0-2022-03-09")
depends_on("snappy/1.1.10")
depends_on("xsimd/8.1.0")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/arrow-14.0.2-j52dt4/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/arrow-14.0.2-j52dt4/lib64", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/arrow-14.0.2-j52dt4/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/arrow-14.0.2-j52dt4/.", ":")

