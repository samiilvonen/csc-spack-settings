-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:29:05.316239
--
-- freexl@2.0.0%gcc@13.2.0 build_system=autotools arch=linux-rocky8-cascadelake/juquyou
--

whatis([[Name : freexl]])
whatis([[Version : 2.0.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : FreeXL is an open source library to extract valid data from within an Excel (.xls) spreadsheet.]])

help([[Name   : freexl]])
help([[Version: 2.0.0]])
help([[Target : cascadelake]])
help()
help([[FreeXL is an open source library to extract valid data from within an
Excel (.xls) spreadsheet.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("minizip/1.2.11")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/freexl-2.0.0-juquyo/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/freexl-2.0.0-juquyo/lib", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/freexl-2.0.0-juquyo/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/freexl-2.0.0-juquyo/.", ":")

