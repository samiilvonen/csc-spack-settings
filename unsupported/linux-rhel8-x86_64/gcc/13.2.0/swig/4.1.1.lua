-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-28 14:20:37.723138
--
-- swig@4.1.1%gcc@13.2.0 build_system=autotools arch=linux-rhel8-cascadelake/wfzimw7
--

whatis([[Name : swig]])
whatis([[Version : 4.1.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : SWIG is an interface compiler that connects programs written in C and C++ with scripting languages such as Perl, Python, Ruby, and Tcl. It works by taking the declarations found in C/C++ header files and using them to generate the wrapper code that scripting languages need to access the underlying C/C++ code. In addition, SWIG provides a variety of customization features that let you tailor the wrapping process to suit your application.]])

help([[Name   : swig]])
help([[Version: 4.1.1]])
help([[Target : cascadelake]])
help()
help([[SWIG is an interface compiler that connects programs written in C and
C++ with scripting languages such as Perl, Python, Ruby, and Tcl. It
works by taking the declarations found in C/C++ header files and using
them to generate the wrapper code that scripting languages need to
access the underlying C/C++ code. In addition, SWIG provides a variety
of customization features that let you tailor the wrapping process to
suit your application.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("pcre2/10.43")

prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/swig-4.1.1-wfzimw/bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/swig-4.1.1-wfzimw/.", ":")

