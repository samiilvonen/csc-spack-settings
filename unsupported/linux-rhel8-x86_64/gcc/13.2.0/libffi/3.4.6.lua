-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:56:15.951501
--
-- libffi@3.4.6%gcc@13.2.0 build_system=autotools arch=linux-rhel8-cascadelake/adefb53
--

whatis([[Name : libffi]])
whatis([[Version : 3.4.6]])
whatis([[Target : cascadelake]])
whatis([[Short description : The libffi library provides a portable, high level programming interface to various calling conventions. This allows a programmer to call any function specified by a call interface description at run time.]])
whatis([[Configure options : --without-gcc-arch]])

help([[Name   : libffi]])
help([[Version: 3.4.6]])
help([[Target : cascadelake]])
help()
help([[The libffi library provides a portable, high level programming interface
to various calling conventions. This allows a programmer to call any
function specified by a call interface description at run time.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libffi-3.4.6-adefb5/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libffi-3.4.6-adefb5/lib", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libffi-3.4.6-adefb5/lib64", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libffi-3.4.6-adefb5/share/man", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libffi-3.4.6-adefb5/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libffi-3.4.6-adefb5/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libffi-3.4.6-adefb5/.", ":")
append_path("MANPATH", "", ":")

