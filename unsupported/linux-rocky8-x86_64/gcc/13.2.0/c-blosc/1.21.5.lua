-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:29:35.327210
--
-- c-blosc@1.21.5%gcc@13.2.0+avx2~ipo build_system=cmake build_type=Release generator=make arch=linux-rocky8-cascadelake/qzlwwqu
--

whatis([[Name : c-blosc]])
whatis([[Version : 1.21.5]])
whatis([[Target : cascadelake]])
whatis([[Short description : Blosc, an extremely fast, multi-threaded, meta-compressor library]])
whatis([[Configure options : -DDEACTIVATE_AVX2=OFF -DPREFER_EXTERNAL_SNAPPY=ON -DPREFER_EXTERNAL_ZLIB=ON -DPREFER_EXTERNAL_ZSTD=ON -DPREFER_EXTERNAL_LZ4=ON -DBUILD_TESTS=OFF -DBUILD_BENCHMARKS=OFF]])

help([[Name   : c-blosc]])
help([[Version: 1.21.5]])
help([[Target : cascadelake]])
help()
help([[Blosc, an extremely fast, multi-threaded, meta-compressor library]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("lz4/1.9.4")
depends_on("snappy/1.1.10")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/c-blosc-1.21.5-qzlwwq/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/c-blosc-1.21.5-qzlwwq/lib64", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/c-blosc-1.21.5-qzlwwq/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/c-blosc-1.21.5-qzlwwq/.", ":")

