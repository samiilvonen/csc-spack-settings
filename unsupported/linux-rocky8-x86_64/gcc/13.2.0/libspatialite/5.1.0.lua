-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:31:41.319523
--
-- libspatialite@5.1.0%gcc@13.2.0 build_system=autotools arch=linux-rocky8-cascadelake/lk4ggbv
--

whatis([[Name : libspatialite]])
whatis([[Version : 5.1.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : SpatiaLite is an open source library intended to extend the SQLite core to support fully fledged Spatial SQL capabilities.]])

help([[Name   : libspatialite]])
help([[Version: 5.1.0]])
help([[Target : cascadelake]])
help()
help([[SpatiaLite is an open source library intended to extend the SQLite core
to support fully fledged Spatial SQL capabilities.]])


depends_on("freexl/2.0.0")
depends_on("gcc-runtime/13.2.0")
depends_on("geos/3.12.1")
depends_on("glibc/2.28")
depends_on("librttopo/1.1.0")
depends_on("minizip/1.2.11")
depends_on("proj/9.2.1")
depends_on("sqlite/3.43.2")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libspatialite-5.1.0-lk4ggb/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libspatialite-5.1.0-lk4ggb/lib", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libspatialite-5.1.0-lk4ggb/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libspatialite-5.1.0-lk4ggb/.", ":")

