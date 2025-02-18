-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:58:16.056599
--
-- expat@2.6.2%gcc@13.2.0+libbsd build_system=autotools arch=linux-rhel8-cascadelake/joxjoyw
--

whatis([[Name : expat]])
whatis([[Version : 2.6.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : Expat is an XML parser library written in C.]])

help([[Name   : expat]])
help([[Version: 2.6.2]])
help([[Target : cascadelake]])
help()
help([[Expat is an XML parser library written in C.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("libbsd/0.12.1")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/expat-2.6.2-joxjoy/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/expat-2.6.2-joxjoy/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/expat-2.6.2-joxjoy/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/expat-2.6.2-joxjoy/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/expat-2.6.2-joxjoy/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/expat-2.6.2-joxjoy/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/expat-2.6.2-joxjoy/.", ":")
append_path("MANPATH", "", ":")

