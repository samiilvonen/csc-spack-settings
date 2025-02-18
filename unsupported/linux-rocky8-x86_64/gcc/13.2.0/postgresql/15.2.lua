-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:27:38.899938
--
-- postgresql@15.2%gcc@13.2.0+client_only~gssapi~perl~python~tcl~threadsafe~xml build_system=autotools lineedit=readline arch=linux-rocky8-cascadelake/qdci2g2
--

whatis([[Name : postgresql]])
whatis([[Version : 15.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : PostgreSQL is a powerful, open source object-relational database system. It has more than 15 years of active development and a proven architecture that has earned it a strong reputation for reliability, data integrity, and correctness.]])
whatis([[Configure options : --with-openssl --disable-thread-safety]])

help([[Name   : postgresql]])
help([[Version: 15.2]])
help([[Target : cascadelake]])
help()
help([[PostgreSQL is a powerful, open source object-relational database system.
It has more than 15 years of active development and a proven
architecture that has earned it a strong reputation for reliability,
data integrity, and correctness.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("openssl/1.1.1k")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/postgresql-15.2-qdci2g/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/postgresql-15.2-qdci2g/lib", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/postgresql-15.2-qdci2g/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/postgresql-15.2-qdci2g/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/postgresql-15.2-qdci2g/.", ":")

