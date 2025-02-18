-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:27:20.085609
--
-- libgeotiff@1.7.1%gcc@13.2.0+jpeg+proj+zlib build_system=autotools arch=linux-rocky8-cascadelake/cqovhha
--

whatis([[Name : libgeotiff]])
whatis([[Version : 1.7.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : GeoTIFF represents an effort by over 160 different remote sensing, GIS, cartographic, and surveying related companies and organizations to establish a TIFF based interchange format for georeferenced raster imagery. ]])
whatis([[Configure options : --with-libtiff=/appl/spack/v022/install-tree/gcc-13.2.0/libtiff-4.5.1-zjw5dr --with-zlib=/appl/spack/v022/install-tree/gcc-8.5.0/zlib-ng-2.1.6-2cikda --with-jpeg=/appl/spack/v022/install-tree/gcc-13.2.0/libjpeg-turbo-3.0.0-edxd5g --with-proj=/appl/spack/v022/install-tree/gcc-13.2.0/proj-9.2.1-afd2d6]])

help([[Name   : libgeotiff]])
help([[Version: 1.7.1]])
help([[Target : cascadelake]])
help()
help([[GeoTIFF represents an effort by over 160 different remote sensing, GIS,
cartographic, and surveying related companies and organizations to
establish a TIFF based interchange format for georeferenced raster
imagery.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("libjpeg-turbo/3.0.0")
depends_on("libtiff/4.5.1")
depends_on("proj/9.2.1")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libgeotiff-1.7.1-cqovhh/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libgeotiff-1.7.1-cqovhh/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libgeotiff-1.7.1-cqovhh/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libgeotiff-1.7.1-cqovhh/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libgeotiff-1.7.1-cqovhh/share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libgeotiff-1.7.1-cqovhh/.", ":")
append_path("MANPATH", "", ":")

