-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:58:49.956855
--
-- libxcrypt@4.4.35%gcc@13.2.0~obsolete_api build_system=autotools patches=4885da3 arch=linux-rhel8-cascadelake/7agarzw
--

whatis([[Name : libxcrypt]])
whatis([[Version : 4.4.35]])
whatis([[Target : cascadelake]])
whatis([[Short description : libxcrypt is a modern library for one-way hashing of passwords.]])
whatis([[Configure options : ac_cv_path_python3_passlib=not found --disable-werror --disable-obsolete-api]])

help([[Name   : libxcrypt]])
help([[Version: 4.4.35]])
help([[Target : cascadelake]])
help()
help([[libxcrypt is a modern library for one-way hashing of passwords.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxcrypt-4.4.35-7agarz/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxcrypt-4.4.35-7agarz/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxcrypt-4.4.35-7agarz/share/man", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxcrypt-4.4.35-7agarz/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxcrypt-4.4.35-7agarz/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxcrypt-4.4.35-7agarz/.", ":")
append_path("MANPATH", "", ":")

