-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-28 14:19:43.941124
--
-- pcre2@10.43%gcc@13.2.0~jit+multibyte build_system=autotools arch=linux-rhel8-cascadelake/chrkumq
--

whatis([[Name : pcre2]])
whatis([[Version : 10.43]])
whatis([[Target : cascadelake]])
whatis([[Short description : The PCRE2 package contains Perl Compatible Regular Expression libraries. These are useful for implementing regular expression pattern matching using the same syntax and semantics as Perl 5.]])
whatis([[Configure options : --enable-pcre2-16 --enable-pcre2-32]])

help([[Name   : pcre2]])
help([[Version: 10.43]])
help([[Target : cascadelake]])
help()
help([[The PCRE2 package contains Perl Compatible Regular Expression libraries.
These are useful for implementing regular expression pattern matching
using the same syntax and semantics as Perl 5.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/pcre2-10.43-chrkum/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/pcre2-10.43-chrkum/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/pcre2-10.43-chrkum/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/pcre2-10.43-chrkum/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/pcre2-10.43-chrkum/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/pcre2-10.43-chrkum/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/pcre2-10.43-chrkum/.", ":")
append_path("MANPATH", "", ":")

