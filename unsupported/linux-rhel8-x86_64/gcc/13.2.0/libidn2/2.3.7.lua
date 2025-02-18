-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:25:29.753655
--
-- libidn2@2.3.7%gcc@13.2.0 build_system=autotools arch=linux-rhel8-cascadelake/tx3756x
--

whatis([[Name : libidn2]])
whatis([[Version : 2.3.7]])
whatis([[Target : cascadelake]])
whatis([[Short description : Libidn2 is a free software implementation of IDNA2008, Punycode and TR46. Its purpose is to encode and decode internationalized domain names.]])

help([[Name   : libidn2]])
help([[Version: 2.3.7]])
help([[Target : cascadelake]])
help()
help([[Libidn2 is a free software implementation of IDNA2008, Punycode and
TR46. Its purpose is to encode and decode internationalized domain
names.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("libunistring/1.2")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libidn2-2.3.7-tx3756/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libidn2-2.3.7-tx3756/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libidn2-2.3.7-tx3756/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libidn2-2.3.7-tx3756/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libidn2-2.3.7-tx3756/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libidn2-2.3.7-tx3756/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libidn2-2.3.7-tx3756/.", ":")
append_path("MANPATH", "", ":")

