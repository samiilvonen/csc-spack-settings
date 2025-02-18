-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:31:41.255950
--
-- py-twisted@15.4.0%gcc@13.2.0 build_system=python_pip arch=linux-rocky8-cascadelake/xyw4ogp
--

whatis([[Name : py-twisted]])
whatis([[Version : 15.4.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : An asynchronous networking framework written in Python]])

help([[Name   : py-twisted]])
help([[Version: 15.4.0]])
help([[Target : cascadelake]])
help()
help([[An asynchronous networking framework written in Python]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("py-zope-interface/5.4.0")
depends_on("python/3.11.7")
depends_on("python-venv/1.0")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-twisted-15.4.0-xyw4og/lib", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-twisted-15.4.0-xyw4og/bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-twisted-15.4.0-xyw4og/.", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-twisted-15.4.0-xyw4og/lib/python3.11/site-packages", ":")

