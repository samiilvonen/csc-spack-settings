-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:31:24.753645
--
-- py-kerberos@1.3.0%gcc@13.2.0 build_system=python_pip arch=linux-rocky8-cascadelake/fdnn4qg
--

whatis([[Name : py-kerberos]])
whatis([[Version : 1.3.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : This Python package is a high-level wrapper for Kerberos (GSSAPI) operations. The goal is to avoid having to build a module that wraps the entire Kerberos.framework, and instead offer a limited set of functions that do what is needed for client/server Kerberos authentication based on <https://www.ietf.org/rfc/rfc4559.txt>.]])

help([[Name   : py-kerberos]])
help([[Version: 1.3.0]])
help([[Target : cascadelake]])
help()
help([[This Python package is a high-level wrapper for Kerberos (GSSAPI)
operations. The goal is to avoid having to build a module that wraps the
entire Kerberos.framework, and instead offer a limited set of functions
that do what is needed for client/server Kerberos authentication based
on <https://www.ietf.org/rfc/rfc4559.txt>.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("keyutils/1.6.1")
depends_on("krb5/1.20.1")
depends_on("python/3.11.7")
depends_on("python-venv/1.0")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-kerberos-1.3.0-fdnn4q/lib", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-kerberos-1.3.0-fdnn4q/.", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-kerberos-1.3.0-fdnn4q/lib/python3.11/site-packages", ":")

