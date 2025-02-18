-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 14:04:00.945197
--
-- icu4c@67.1%gcc@13.2.0 build_system=autotools cxxstd=17 arch=linux-rhel8-cascadelake/lawqjsd
--

whatis([[Name : icu4c]])
whatis([[Version : 67.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : ICU is a mature, widely used set of C/C++ and Java libraries providing Unicode and Globalization support for software applications. ICU4C is the C/C++ interface.]])
whatis([[Configure options : PYTHON=/appl/spack/v022/install-tree/gcc-13.2.0/python-3.11.7-vc6wxv/bin/python3.11]])

help([[Name   : icu4c]])
help([[Version: 67.1]])
help([[Target : cascadelake]])
help()
help([[ICU is a mature, widely used set of C/C++ and Java libraries providing
Unicode and Globalization support for software applications. ICU4C is
the C/C++ interface.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/icu4c-67.1-lawqjs/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/icu4c-67.1-lawqjs/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/icu4c-67.1-lawqjs/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/icu4c-67.1-lawqjs/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/icu4c-67.1-lawqjs/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/icu4c-67.1-lawqjs/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/icu4c-67.1-lawqjs/.", ":")
append_path("MANPATH", "", ":")

