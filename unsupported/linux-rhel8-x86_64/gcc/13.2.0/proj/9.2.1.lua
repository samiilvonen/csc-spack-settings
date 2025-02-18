-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 14:03:57.303978
--
-- proj@9.2.1%gcc@13.2.0+curl~ipo~pic+shared+tiff build_system=cmake build_type=Release generator=make arch=linux-rhel8-cascadelake/afd2d6z
--

whatis([[Name : proj]])
whatis([[Version : 9.2.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : PROJ is a generic coordinate transformation software, that transforms geospatial coordinates from one coordinate reference system (CRS) to another. This includes cartographic projections as well as geodetic transformations.]])

help([[Name   : proj]])
help([[Version: 9.2.1]])
help([[Target : cascadelake]])
help()
help([[PROJ is a generic coordinate transformation software, that transforms
geospatial coordinates from one coordinate reference system (CRS) to
another. This includes cartographic projections as well as geodetic
transformations.]])


depends_on("curl/8.7.1")
depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("libtiff/4.5.1")
depends_on("sqlite/3.43.2")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/proj-9.2.1-afd2d6/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/proj-9.2.1-afd2d6/lib64", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/proj-9.2.1-afd2d6/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/proj-9.2.1-afd2d6/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/proj-9.2.1-afd2d6/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/proj-9.2.1-afd2d6/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/proj-9.2.1-afd2d6/.", ":")
setenv("PROJ_LIB", "/appl/spack/v022/install-tree/gcc-13.2.0/proj-9.2.1-afd2d6/share/proj")
append_path("MANPATH", "", ":")

