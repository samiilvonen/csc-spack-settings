-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:24:58.911358
--
-- libunistring@1.2%gcc@13.2.0 build_system=autotools arch=linux-rhel8-cascadelake/upnkuye
--

whatis([[Name : libunistring]])
whatis([[Version : 1.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : This library provides functions for manipulating Unicode strings and for manipulating C strings according to the Unicode standard.]])

help([[Name   : libunistring]])
help([[Version: 1.2]])
help([[Target : cascadelake]])
help()
help([[This library provides functions for manipulating Unicode strings and for
manipulating C strings according to the Unicode standard.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libunistring-1.2-upnkuy/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libunistring-1.2-upnkuy/lib", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libunistring-1.2-upnkuy/.", ":")

