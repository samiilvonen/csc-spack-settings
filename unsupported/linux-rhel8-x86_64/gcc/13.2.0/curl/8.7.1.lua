-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:26:39.594419
--
-- curl@8.7.1%gcc@13.2.0~gssapi~ldap+libidn2~librtmp~libssh+libssh2+nghttp2 build_system=autotools libs=shared,static tls=gnutls arch=linux-rhel8-cascadelake/hb4g2sl
--

whatis([[Name : curl]])
whatis([[Version : 8.7.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : cURL is an open source command line tool and library for transferring data with URL syntax]])

help([[Name   : curl]])
help([[Version: 8.7.1]])
help([[Target : cascadelake]])
help()
help([[cURL is an open source command line tool and library for transferring
data with URL syntax]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("gnutls/3.6.16")
depends_on("libidn2/2.3.7")
depends_on("libssh2/1.11.0")
depends_on("nghttp2/1.57.0")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/curl-8.7.1-hb4g2s/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/curl-8.7.1-hb4g2s/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/curl-8.7.1-hb4g2s/share/man", ":")
prepend_path("ACLOCAL_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/curl-8.7.1-hb4g2s/share/aclocal", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/curl-8.7.1-hb4g2s/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/curl-8.7.1-hb4g2s/share/man", ":")
prepend_path("ACLOCAL_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/curl-8.7.1-hb4g2s/share/aclocal", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/curl-8.7.1-hb4g2s/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/curl-8.7.1-hb4g2s/.", ":")
append_path("MANPATH", "", ":")

