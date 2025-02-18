-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:56:43.386935
--
-- util-linux-uuid@2.38.1%gcc@13.2.0 build_system=autotools arch=linux-rhel8-cascadelake/smzq2g6
--

whatis([[Name : util-linux-uuid]])
whatis([[Version : 2.38.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : Util-linux is a suite of essential utilities for any Linux system.]])
whatis([[Configure options : --disable-use-tty-group --disable-makeinstall-chown --without-systemd --disable-all-programs --without-python --enable-libuuid --disable-bash-completion]])

help([[Name   : util-linux-uuid]])
help([[Version: 2.38.1]])
help([[Target : cascadelake]])
help()
help([[Util-linux is a suite of essential utilities for any Linux system.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/util-linux-uuid-2.38.1-smzq2g/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/util-linux-uuid-2.38.1-smzq2g/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/util-linux-uuid-2.38.1-smzq2g/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/util-linux-uuid-2.38.1-smzq2g/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/util-linux-uuid-2.38.1-smzq2g/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/util-linux-uuid-2.38.1-smzq2g/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/util-linux-uuid-2.38.1-smzq2g/.", ":")
append_path("MANPATH", "", ":")

