-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-12 17:25:43.642875
--
-- gdal@3.8.5%gcc@13.2.0~archive~armadillo+arrow~basisu~blosc~brunsli~cfitsio~crnlib~cryptopp~csharp+curl+deflate~ecw+expat~filegdb~freexl~fyba+geos+gif~gta+hdf4+hdf5~hdfs~heif+iconv~idb~ipo~java+jpeg~jxl~kdu~kea~lerc~libaec~libcsf~libkml+liblzma~libqb3+libxml2~luratech+lz4~mongocxx~mrsid~mssql_ncli~mssql_odbc~mysql+netcdf~odbc~odbccpp~ogdi~opencad~opencl~openexr+openjpeg~openssl~oracle~parquet~pcidsk~pcre2~pdfium+png~podofo~poppler+postgresql~python~qhull~rasterlite2~rdb~sfcgal+spatialite+sqlite3~teigha~tiledb~webp~xercesc+zstd build_system=cmake build_type=Release generator=ninja patches=52459dc arch=linux-rocky8-cascadelake/sryrb4i
--

whatis([[Name : gdal]])
whatis([[Version : 3.8.5]])
whatis([[Target : cascadelake]])
whatis([[Short description : GDAL: Geospatial Data Abstraction Library.]])

help([[Name   : gdal]])
help([[Version: 3.8.5]])
help([[Target : cascadelake]])
help()
help([[GDAL: Geospatial Data Abstraction Library. GDAL is a translator library
for raster and vector geospatial data formats that is released under an
MIT style Open Source License by the Open Source Geospatial Foundation.
As a library, it presents a single raster abstract data model and single
vector abstract data model to the calling application for all supported
formats. It also comes with a variety of useful command line utilities
for data translation and processing.]])


depends_on("hdf5/1.14.3-mpi")
depends_on("netcdf-c/4.9.2")
depends_on("proj/9.2.1")
conflict("gdal")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gdal-3.8.5-sryrb4/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gdal-3.8.5-sryrb4/lib64", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gdal-3.8.5-sryrb4/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gdal-3.8.5-sryrb4/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gdal-3.8.5-sryrb4/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gdal-3.8.5-sryrb4/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gdal-3.8.5-sryrb4/.", ":")
prepend_path("LD_LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/arrow-14.0.2-j52dt4/lib64:/appl/spack/v022/install-tree/gcc-13.2.0/curl-8.7.1-hb4g2s/lib:/appl/spack/v022/install-tree/gcc-13.2.0/expat-2.6.2-joxjoy/lib:/appl/spack/v022/install-tree/gcc-13.2.0/geos-3.12.1-dbk5i5/lib64:/appl/spack/v022/install-tree/gcc-13.2.0/giflib-5.2.1-agwui2/lib:/appl/spack/v022/install-tree/gcc-13.2.0/hdf-4.2.15-d2sm5q/lib:/appl/spack/v022/install-tree/gcc-13.2.0/hdf5-1.14.3-infqqv/lib:/appl/spack/v022/install-tree/gcc-13.2.0/json-c-0.16-fl3zya/lib64:/appl/spack/v022/install-tree/gcc-13.2.0/libdeflate-1.18-qetcqm/lib64:/appl/spack/v022/install-tree/gcc-13.2.0/libgeotiff-1.7.1-cqovhh/lib:/appl/spack/v022/install-tree/gcc-8.5.0/libiconv-1.17-izgmuj/lib:/appl/spack/v022/install-tree/gcc-13.2.0/libjpeg-turbo-3.0.0-edxd5g/lib64:/appl/spack/v022/install-tree/gcc-13.2.0/libpng-1.6.39-2gb7ke/lib64:/appl/spack/v022/install-tree/gcc-13.2.0/libspatialite-5.1.0-lk4ggb/lib:/appl/spack/v022/install-tree/gcc-13.2.0/libtiff-4.5.1-zjw5dr/lib64:/appl/spack/v022/install-tree/gcc-8.5.0/libxml2-2.10.3-ivqbem/lib:/appl/spack/v022/install-tree/gcc-13.2.0/lz4-1.9.4-ume5by/lib:/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-c-4.9.2-3vfb5q/lib:/appl/spack/v022/install-tree/gcc-13.2.0/openjpeg-2.5.0-o2lg5y/lib:/appl/spack/v022/install-tree/gcc-13.2.0/postgresql-15.2-qdci2g/lib:/appl/spack/v022/install-tree/gcc-13.2.0/proj-9.2.1-afd2d6/lib64:/appl/spack/v022/install-tree/gcc-13.2.0/sqlite-3.43.2-riijzc/lib:/appl/spack/v022/install-tree/gcc-8.5.0/xz-5.4.6-ngffzc/lib:/appl/spack/v022/install-tree/gcc-8.5.0/zlib-ng-2.1.6-2cikda/lib:/appl/spack/v022/install-tree/gcc-8.5.0/zstd-1.5.6-bch7ql/lib", ":")
setenv("GDAL_INSTALL_ROOT", "/appl/spack/v022/install-tree/gcc-13.2.0/gdal-3.8.5-sryrb4")
setenv("SSL_CERT_FILE", "/etc/ssl/certs/ca-bundle.crt")
append_path("MANPATH", "", ":")

