-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:29:10.267137
--
-- geos@3.12.1%gcc@13.2.0~ipo+shared build_system=cmake build_type=Release generator=ninja arch=linux-rocky8-cascadelake/dbk5i55
--

whatis([[Name : geos]])
whatis([[Version : 3.12.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : GEOS (Geometry Engine, Open Source).]])
whatis([[Configure options : -DBUILD_SHARED_LIBS:BOOL=ON]])

help([[Name   : geos]])
help([[Version: 3.12.1]])
help([[Target : cascadelake]])
help()
help([[GEOS (Geometry Engine, Open Source). GEOS is a C/C++ library for
computational geometry with a focus on algorithms used in geographic
information systems (GIS) software. It implements the OGC Simple
Features geometry model and provides all the spatial functions in that
standard as well as many others. GEOS is a core dependency of PostGIS,
QGIS, GDAL, and Shapely.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/geos-3.12.1-dbk5i5/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/geos-3.12.1-dbk5i5/lib64", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/geos-3.12.1-dbk5i5/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/geos-3.12.1-dbk5i5/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/geos-3.12.1-dbk5i5/.", ":")

