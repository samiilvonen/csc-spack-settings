-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:23:07.424829
--
-- openssl@1.1.1k%gcc@13.2.0~docs+shared build_system=generic certs=mozilla arch=linux-rhel8-cascadelake/hrvjcqa
--

whatis([[Name : openssl]])
whatis([[Version : 1.1.1k]])
whatis([[Target : cascadelake]])
whatis([[Short description : OpenSSL is an open source project that provides a robust, commercial-grade, and full-featured toolkit for the Transport Layer Security (TLS) and Secure Sockets Layer (SSL) protocols. It is also a general-purpose cryptography library.]])
whatis([[Configure options : unknown, software installed outside of Spack]])

help([[Name   : openssl]])
help([[Version: 1.1.1k]])
help([[Target : cascadelake]])
help()
help([[OpenSSL is an open source project that provides a robust, commercial-
grade, and full-featured toolkit for the Transport Layer Security (TLS)
and Secure Sockets Layer (SSL) protocols. It is also a general-purpose
cryptography library.]])



prepend_path("CPATH", "/appl/spack/syslibs/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/syslibs/lib", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/syslibs/lib64", ":")
prepend_path("MANPATH", "/appl/spack/syslibs/share/man", ":")
prepend_path("PATH", "/appl/spack/syslibs/bin", ":")
prepend_path("MANPATH", "/appl/spack/syslibs/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/syslibs/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/syslibs/.", ":")
append_path("MANPATH", "", ":")

