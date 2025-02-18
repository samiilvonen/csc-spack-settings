-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-23 10:16:07.804085
--
-- py-setuptools@69.2.0%gcc@13.2.0 build_system=generic arch=linux-rhel8-cascadelake/xudqaz2
--

whatis([[Name : py-setuptools]])
whatis([[Version : 69.2.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : A Python utility that aids in the process of downloading, building, upgrading, installing, and uninstalling Python packages.]])

help([[Name   : py-setuptools]])
help([[Version: 69.2.0]])
help([[Target : cascadelake]])
help()
help([[A Python utility that aids in the process of downloading, building,
upgrading, installing, and uninstalling Python packages.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("python/3.11.7")
depends_on("python-venv/1.0")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-setuptools-69.2.0-xudqaz/lib", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-setuptools-69.2.0-xudqaz/.", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-setuptools-69.2.0-xudqaz/lib/python3.11/site-packages", ":")

