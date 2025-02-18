-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-23 10:16:12.589900
--
-- py-fypp@3.1%gcc@13.2.0 build_system=python_pip arch=linux-rhel8-cascadelake/62lwvql
--

whatis([[Name : py-fypp]])
whatis([[Version : 3.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : Python powered Fortran preprocessor.]])

help([[Name   : py-fypp]])
help([[Version: 3.1]])
help([[Target : cascadelake]])
help()
help([[Python powered Fortran preprocessor.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("python/3.11.7")
depends_on("python-venv/1.0")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-fypp-3.1-62lwvq/lib", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-fypp-3.1-62lwvq/bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-fypp-3.1-62lwvq/.", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-fypp-3.1-62lwvq/lib/python3.11/site-packages", ":")

