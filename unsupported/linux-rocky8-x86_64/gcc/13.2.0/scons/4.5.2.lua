-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:31:35.061608
--
-- scons@4.5.2%gcc@13.2.0 build_system=python_pip arch=linux-rocky8-cascadelake/giy36nc
--

whatis([[Name : scons]])
whatis([[Version : 4.5.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : SCons is a software construction tool]])

help([[Name   : scons]])
help([[Version: 4.5.2]])
help([[Target : cascadelake]])
help()
help([[SCons is a software construction tool]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("py-setuptools/69.2.0")
depends_on("python/3.11.7")
depends_on("python-venv/1.0")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/scons-4.5.2-giy36n/lib", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/scons-4.5.2-giy36n/bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/scons-4.5.2-giy36n/.", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/scons-4.5.2-giy36n/lib/python3.11/site-packages", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/scons-4.5.2-giy36n/lib/scons", ":")

