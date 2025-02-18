-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-23 09:45:05.164065
--
-- py-pip@23.1.2%gcc@13.2.0 build_system=generic arch=linux-rhel8-cascadelake/m5crk7j
--

whatis([[Name : py-pip]])
whatis([[Version : 23.1.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : The PyPA recommended tool for installing Python packages.]])

help([[Name   : py-pip]])
help([[Version: 23.1.2]])
help([[Target : cascadelake]])
help()
help([[The PyPA recommended tool for installing Python packages.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("python/3.11.7")
depends_on("python-venv/1.0")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-pip-23.1.2-m5crk7/lib", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-pip-23.1.2-m5crk7/bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-pip-23.1.2-m5crk7/.", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-pip-23.1.2-m5crk7/lib/python3.11/site-packages", ":")

