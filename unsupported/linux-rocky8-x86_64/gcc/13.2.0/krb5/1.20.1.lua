-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:28:08.230237
--
-- krb5@1.20.1%gcc@13.2.0+shared build_system=autotools arch=linux-rocky8-cascadelake/c2ro2fd
--

whatis([[Name : krb5]])
whatis([[Version : 1.20.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : Network authentication protocol]])
whatis([[Configure options : --without-system-verto --disable-static CFLAGS=-fcommon]])

help([[Name   : krb5]])
help([[Version: 1.20.1]])
help([[Target : cascadelake]])
help()
help([[Network authentication protocol]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("openssl/1.1.1k")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/krb5-1.20.1-c2ro2f/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/krb5-1.20.1-c2ro2f/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/krb5-1.20.1-c2ro2f/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/krb5-1.20.1-c2ro2f/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/krb5-1.20.1-c2ro2f/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/krb5-1.20.1-c2ro2f/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/krb5-1.20.1-c2ro2f/.", ":")
append_path("MANPATH", "", ":")

