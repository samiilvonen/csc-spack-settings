-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:31:22.750598
--
-- py-six@1.16.0%gcc@13.2.0 build_system=python_pip arch=linux-rocky8-cascadelake/gny37js
--

whatis([[Name : py-six]])
whatis([[Version : 1.16.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : Python 2 and 3 compatibility utilities.]])

help([[Name   : py-six]])
help([[Version: 1.16.0]])
help([[Target : cascadelake]])
help()
help([[Python 2 and 3 compatibility utilities.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("python/3.11.7")
depends_on("python-venv/1.0")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-six-1.16.0-gny37j/lib", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-six-1.16.0-gny37j/.", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-six-1.16.0-gny37j/lib/python3.11/site-packages", ":")

