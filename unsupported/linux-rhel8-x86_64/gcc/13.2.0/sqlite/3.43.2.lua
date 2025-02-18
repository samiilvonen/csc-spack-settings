-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:58:18.237021
--
-- sqlite@3.43.2%gcc@13.2.0+column_metadata+dynamic_extensions+fts~functions+rtree build_system=autotools arch=linux-rhel8-cascadelake/riijzcd
--

whatis([[Name : sqlite]])
whatis([[Version : 3.43.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : SQLite is a C-language library that implements a small, fast, self-contained, high-reliability, full-featured, SQL database engine. ]])

help([[Name   : sqlite]])
help([[Version: 3.43.2]])
help([[Target : cascadelake]])
help()
help([[SQLite is a C-language library that implements a small, fast, self-
contained, high-reliability, full-featured, SQL database engine.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/sqlite-3.43.2-riijzc/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/sqlite-3.43.2-riijzc/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/sqlite-3.43.2-riijzc/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/sqlite-3.43.2-riijzc/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/sqlite-3.43.2-riijzc/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/sqlite-3.43.2-riijzc/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/sqlite-3.43.2-riijzc/.", ":")
append_path("MANPATH", "", ":")

