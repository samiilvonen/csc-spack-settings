-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:23:07.364538
--
-- gnutls@3.6.16%gcc@13.2.0~guile+zlib build_system=autotools arch=linux-rhel8-cascadelake/zyek5ih
--

whatis([[Name : gnutls]])
whatis([[Version : 3.6.16]])
whatis([[Target : cascadelake]])
whatis([[Short description : GnuTLS is a secure communications library implementing the SSL, TLS and DTLS protocols and technologies around them. It provides a simple C language application programming interface (API) to access the secure communications protocols as well as APIs to parse and write X.509, PKCS #12, OpenPGP and other required structures. It is aimed to be portable and efficient with focus on security and interoperability.]])
whatis([[Configure options : unknown, software installed outside of Spack]])

help([[Name   : gnutls]])
help([[Version: 3.6.16]])
help([[Target : cascadelake]])
help()
help([[GnuTLS is a secure communications library implementing the SSL, TLS and
DTLS protocols and technologies around them. It provides a simple C
language application programming interface (API) to access the secure
communications protocols as well as APIs to parse and write X.509, PKCS
#12, OpenPGP and other required structures. It is aimed to be portable
and efficient with focus on security and interoperability.]])



prepend_path("CPATH", "/appl/spack/syslibs/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/syslibs/lib", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/syslibs/lib64", ":")
prepend_path("MANPATH", "/appl/spack/syslibs/share/man", ":")
prepend_path("PATH", "/appl/spack/syslibs/bin", ":")
prepend_path("MANPATH", "/appl/spack/syslibs/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/syslibs/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/syslibs/.", ":")
append_path("MANPATH", "", ":")

