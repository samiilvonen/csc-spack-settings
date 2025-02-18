-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-28 14:20:00.113356
--
-- libedit@3.1-20230828%gcc@13.2.0 build_system=autotools arch=linux-rhel8-cascadelake/d7rhmgd
--

whatis([[Name : libedit]])
whatis([[Version : 3.1-20230828]])
whatis([[Target : cascadelake]])
whatis([[Short description : An autotools compatible port of the NetBSD editline library]])
whatis([[Configure options : ac_cv_lib_curses_tgetent=no ac_cv_lib_termcap_tgetent=no ac_cv_lib_ncurses_tgetent=no]])

help([[Name   : libedit]])
help([[Version: 3.1-20230828]])
help([[Target : cascadelake]])
help()
help([[An autotools compatible port of the NetBSD editline library]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libedit-3.1-20230828-d7rhmg/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libedit-3.1-20230828-d7rhmg/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libedit-3.1-20230828-d7rhmg/share/man", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libedit-3.1-20230828-d7rhmg/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libedit-3.1-20230828-d7rhmg/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libedit-3.1-20230828-d7rhmg/.", ":")
append_path("MANPATH", "", ":")

