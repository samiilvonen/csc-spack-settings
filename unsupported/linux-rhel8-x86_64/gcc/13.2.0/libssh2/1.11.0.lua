-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:23:22.765870
--
-- libssh2@1.11.0%gcc@13.2.0+shared build_system=autotools crypto=openssl patches=011d926 arch=linux-rhel8-cascadelake/4papjo2
--

whatis([[Name : libssh2]])
whatis([[Version : 1.11.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : libssh2 is a client-side C library implementing the SSH2 protocol]])

help([[Name   : libssh2]])
help([[Version: 1.11.0]])
help([[Target : cascadelake]])
help()
help([[libssh2 is a client-side C library implementing the SSH2 protocol]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("openssl/1.1.1k")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libssh2-1.11.0-4papjo/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libssh2-1.11.0-4papjo/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libssh2-1.11.0-4papjo/share/man", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libssh2-1.11.0-4papjo/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libssh2-1.11.0-4papjo/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libssh2-1.11.0-4papjo/.", ":")
append_path("MANPATH", "", ":")

