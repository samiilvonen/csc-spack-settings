-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:31:17.707199
--
-- py-zope-interface@5.4.0%gcc@13.2.0 build_system=python_pip arch=linux-rocky8-cascadelake/anhxcad
--

whatis([[Name : py-zope-interface]])
whatis([[Version : 5.4.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : This package provides an implementation of 'object interfaces' for Python. Interfaces are a mechanism for labeling objects as conforming to a given API or contract. So, this package can be considered as implementation of the Design By Contract methodology support in Python.]])

help([[Name   : py-zope-interface]])
help([[Version: 5.4.0]])
help([[Target : cascadelake]])
help()
help([[This package provides an implementation of "object interfaces" for
Python. Interfaces are a mechanism for labeling objects as conforming to
a given API or contract. So, this package can be considered as
implementation of the Design By Contract methodology support in Python.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("py-setuptools/69.2.0")
depends_on("python/3.11.7")
depends_on("python-venv/1.0")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-zope-interface-5.4.0-anhxca/lib", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-zope-interface-5.4.0-anhxca/.", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-zope-interface-5.4.0-anhxca/lib/python3.11/site-packages", ":")

