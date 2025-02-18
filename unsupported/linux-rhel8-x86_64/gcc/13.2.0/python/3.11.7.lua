-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 14:02:37.017051
--
-- python@3.11.7%gcc@13.2.0+bz2+crypt+ctypes+dbm~debug+libxml2+lzma~nis~optimizations+pic+pyexpat+pythoncmd+readline+shared+sqlite3+ssl~tkinter+uuid+zlib build_system=generic patches=13fa8bf,b0615b2,ebdca64,f2fd060 arch=linux-rhel8-cascadelake/vc6wxvl
--

whatis([[Name : python]])
whatis([[Version : 3.11.7]])
whatis([[Target : cascadelake]])
whatis([[Short description : The Python programming language.]])
whatis([[Configure options : CPPFLAGS=-I/appl/spack/v022/install-tree/gcc-8.5.0/bzip2-1.0.8-nh7xvg/include -I/appl/spack/v022/install-tree/gcc-13.2.0/expat-2.6.2-joxjoy/include -I/appl/spack/v022/install-tree/gcc-8.5.0/gcc-runtime-8.5.0-tam75x/include -I/appl/spack/v022/install-tree/gcc-8.5.0/gdbm-1.23-ii5lp6/include -I/appl/spack/v022/install-tree/gcc-8.5.0/gettext-0.22.5-y6bbkn/include -I/usr/include -I/appl/spack/v022/install-tree/gcc-13.2.0/libffi-3.4.6-adefb5/include -I/appl/spack/v022/install-tree/gcc-13.2.0/libxcrypt-4.4.35-7agarz/include -I/appl/spack/v022/install-tree/gcc-8.5.0/ncurses-6.5-qp7dmy/include -I/appl/spack/syslibs/include -I/appl/spack/v022/install-tree/gcc-8.5.0/readline-8.2-4rl5qu/include -I/appl/spack/v022/install-tree/gcc-13.2.0/sqlite-3.43.2-riijzc/include -I/appl/spack/v022/install-tree/gcc-13.2.0/util-linux-uuid-2.38.1-smzq2g/include -I/appl/spack/v022/install-tree/gcc-8.5.0/xz-5.4.6-ngffzc/include -I/appl/spack/v022/install-tree/gcc-8.5.0/zlib-ng-2.1.6-2cikda/include LDFLAGS=-L/appl/spack/v022/install-tree/gcc-8.5.0/bzip2-1.0.8-nh7xvg/lib -L/appl/spack/v022/install-tree/gcc-13.2.0/expat-2.6.2-joxjoy/lib  -L/appl/spack/v022/install-tree/gcc-8.5.0/gdbm-1.23-ii5lp6/lib -L/appl/spack/v022/install-tree/gcc-8.5.0/gettext-0.22.5-y6bbkn/lib  -L/appl/spack/v022/install-tree/gcc-13.2.0/libffi-3.4.6-adefb5/lib64 -L/appl/spack/v022/install-tree/gcc-13.2.0/libxcrypt-4.4.35-7agarz/lib -L/appl/spack/v022/install-tree/gcc-8.5.0/ncurses-6.5-qp7dmy/lib -L/appl/spack/syslibs/lib64 -L/appl/spack/v022/install-tree/gcc-8.5.0/readline-8.2-4rl5qu/lib -L/appl/spack/v022/install-tree/gcc-13.2.0/sqlite-3.43.2-riijzc/lib -L/appl/spack/v022/install-tree/gcc-13.2.0/util-linux-uuid-2.38.1-smzq2g/lib -L/appl/spack/v022/install-tree/gcc-8.5.0/xz-5.4.6-ngffzc/lib -L/appl/spack/v022/install-tree/gcc-8.5.0/zlib-ng-2.1.6-2cikda/lib --without-pydebug --enable-shared --without-ensurepip --with-openssl=/appl/spack/syslibs --with-dbmliborder=gdbm --with-system-expat --with-system-ffi --enable-loadable-sqlite-extensions CFLAGS=-fPIC]])

help([[Name   : python]])
help([[Version: 3.11.7]])
help([[Target : cascadelake]])
help()
help([[The Python programming language.]])


depends_on("expat/2.6.2")
depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("libffi/3.4.6")
depends_on("libxcrypt/4.4.35")
depends_on("openssl/1.1.1k")
depends_on("sqlite/3.43.2")
depends_on("util-linux-uuid/2.38.1")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/python-3.11.7-vc6wxv/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/python-3.11.7-vc6wxv/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/python-3.11.7-vc6wxv/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/python-3.11.7-vc6wxv/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/python-3.11.7-vc6wxv/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/python-3.11.7-vc6wxv/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/python-3.11.7-vc6wxv/.", ":")
append_path("MANPATH", "", ":")

