-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-23 09:44:16.997865
--
-- python-venv@1.0%gcc@13.2.0 build_system=generic arch=linux-rhel8-cascadelake/j3j2of6
--

whatis([[Name : python-venv]])
whatis([[Version : 1.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : A Spack managed Python virtual environment]])

help([[Name   : python-venv]])
help([[Version: 1.0]])
help([[Target : cascadelake]])
help()
help([[A Spack managed Python virtual environment]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("python/3.11.7")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/python-venv-1.0-j3j2of/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/python-venv-1.0-j3j2of/lib", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/python-venv-1.0-j3j2of/lib64", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/python-venv-1.0-j3j2of/bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/python-venv-1.0-j3j2of/.", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/python-venv-1.0-j3j2of/lib/python3.11/site-packages", ":")

