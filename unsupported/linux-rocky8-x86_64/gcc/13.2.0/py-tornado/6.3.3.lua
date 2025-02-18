-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:31:18.697497
--
-- py-tornado@6.3.3%gcc@13.2.0 build_system=python_pip arch=linux-rocky8-cascadelake/p4mxyc6
--

whatis([[Name : py-tornado]])
whatis([[Version : 6.3.3]])
whatis([[Target : cascadelake]])
whatis([[Short description : Tornado is a Python web framework and asynchronous networking library.]])

help([[Name   : py-tornado]])
help([[Version: 6.3.3]])
help([[Target : cascadelake]])
help()
help([[Tornado is a Python web framework and asynchronous networking library.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("python/3.11.7")
depends_on("python-venv/1.0")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-tornado-6.3.3-p4mxyc/lib", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-tornado-6.3.3-p4mxyc/.", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-tornado-6.3.3-p4mxyc/lib/python3.11/site-packages", ":")

