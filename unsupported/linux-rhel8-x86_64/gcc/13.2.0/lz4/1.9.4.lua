-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:56:02.304556
--
-- lz4@1.9.4%gcc@13.2.0+pic build_system=makefile libs=shared,static arch=linux-rhel8-cascadelake/ume5byw
--

whatis([[Name : lz4]])
whatis([[Version : 1.9.4]])
whatis([[Target : cascadelake]])
whatis([[Short description : LZ4 is lossless compression algorithm, providing compression speed at 400 MB/s per core, scalable with multi-cores CPU. It also features an extremely fast decoder, with speed in multiple GB/s per core, typically reaching RAM speed limits on multi-core systems.]])

help([[Name   : lz4]])
help([[Version: 1.9.4]])
help([[Target : cascadelake]])
help()
help([[LZ4 is lossless compression algorithm, providing compression speed at
400 MB/s per core, scalable with multi-cores CPU. It also features an
extremely fast decoder, with speed in multiple GB/s per core, typically
reaching RAM speed limits on multi-core systems.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lz4-1.9.4-ume5by/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lz4-1.9.4-ume5by/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lz4-1.9.4-ume5by/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lz4-1.9.4-ume5by/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lz4-1.9.4-ume5by/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lz4-1.9.4-ume5by/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lz4-1.9.4-ume5by/.", ":")
append_path("MANPATH", "", ":")

