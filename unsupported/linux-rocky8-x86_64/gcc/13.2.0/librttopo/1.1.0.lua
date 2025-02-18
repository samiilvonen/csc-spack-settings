-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:29:47.298807
--
-- librttopo@1.1.0%gcc@13.2.0 build_system=autotools arch=linux-rocky8-cascadelake/ucxkcxt
--

whatis([[Name : librttopo]])
whatis([[Version : 1.1.0]])
whatis([[Target : cascadelake]])
whatis([[Short description :  The RT Topology Library exposes an API to create and manage standard (ISO 13249 aka SQL/MM) topologies using user-provided data stores. ]])

help([[Name   : librttopo]])
help([[Version: 1.1.0]])
help([[Target : cascadelake]])
help()
help([[ The RT Topology Library exposes an API to create and manage standard
(ISO 13249 aka SQL/MM) topologies using user-provided data stores.]])


depends_on("gcc-runtime/13.2.0")
depends_on("geos/3.12.1")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/librttopo-1.1.0-ucxkcx/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/librttopo-1.1.0-ucxkcx/lib", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/librttopo-1.1.0-ucxkcx/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/librttopo-1.1.0-ucxkcx/.", ":")

