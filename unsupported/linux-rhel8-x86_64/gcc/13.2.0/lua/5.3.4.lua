-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-28 14:22:23.156465
--
-- lua@5.3.4%gcc@13.2.0~pcfile+shared build_system=makefile fetcher=curl arch=linux-rhel8-cascadelake/t2653yc
--

whatis([[Name : lua]])
whatis([[Version : 5.3.4]])
whatis([[Target : cascadelake]])
whatis([[Short description : The Lua programming language interpreter and library.]])

help([[Name   : lua]])
help([[Version: 5.3.4]])
help([[Target : cascadelake]])
help()
help([[The Lua programming language interpreter and library.]])


depends_on("curl/8.7.1")
depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("unzip/6.0")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lua-5.3.4-t2653y/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lua-5.3.4-t2653y/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lua-5.3.4-t2653y/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lua-5.3.4-t2653y/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lua-5.3.4-t2653y/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lua-5.3.4-t2653y/.", ":")
prepend_path("LUA_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lua-5.3.4-t2653y/share/lua/5.3/?.lua", ";")
prepend_path("LUA_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lua-5.3.4-t2653y/share/lua/5.3/?/init.lua", ";")
prepend_path("LUA_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lua-5.3.4-t2653y/lib/lua/5.3/?.lua", ";")
prepend_path("LUA_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lua-5.3.4-t2653y/lib/lua/5.3/?/init.lua", ";")
prepend_path("LUA_CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/lua-5.3.4-t2653y/lib/lua/5.3/?.so", ";")
append_path("MANPATH", "", ":")

