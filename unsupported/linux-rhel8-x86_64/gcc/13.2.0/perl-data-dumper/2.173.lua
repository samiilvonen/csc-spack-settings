-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-28 14:22:17.484289
--
-- perl-data-dumper@2.173%gcc@13.2.0 build_system=perl arch=linux-rhel8-cascadelake/irsm25v
--

whatis([[Name : perl-data-dumper]])
whatis([[Version : 2.173]])
whatis([[Target : cascadelake]])
whatis([[Short description : Stringified perl data structures, suitable for both printing and eval]])

help([[Name   : perl-data-dumper]])
help([[Version: 2.173]])
help([[Target : cascadelake]])
help()
help([[Stringified perl data structures, suitable for both printing and eval]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/perl-data-dumper-2.173-irsm25/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/perl-data-dumper-2.173-irsm25/man", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/perl-data-dumper-2.173-irsm25/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/perl-data-dumper-2.173-irsm25/.", ":")
prepend_path("PERL5LIB", "/appl/spack/v022/install-tree/gcc-13.2.0/perl-data-dumper-2.173-irsm25/lib/perl5", ":")
append_path("MANPATH", "", ":")

