-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-23 10:16:01.759956
--
-- py-wheel@0.41.2%gcc@13.2.0 build_system=generic arch=linux-rhel8-cascadelake/qmtqwtz
--

whatis([[Name : py-wheel]])
whatis([[Version : 0.41.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : A built-package format for Python.]])

help([[Name   : py-wheel]])
help([[Version: 0.41.2]])
help([[Target : cascadelake]])
help()
help([[A built-package format for Python.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("python/3.11.7")
depends_on("python-venv/1.0")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-wheel-0.41.2-qmtqwt/lib", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-wheel-0.41.2-qmtqwt/bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-wheel-0.41.2-qmtqwt/.", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-wheel-0.41.2-qmtqwt/lib/python3.11/site-packages", ":")

