-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 15:45:30.756919
--
-- jemalloc@5.3.0%gcc@13.2.0~debug~documentation+fill~prof~stats build_system=autotools jemalloc_prefix=none libs=shared,static arch=linux-rhel8-cascadelake/7bzdwue
--

whatis([[Name : jemalloc]])
whatis([[Version : 5.3.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : jemalloc is a general purpose malloc(3) implementation that emphasizes fragmentation avoidance and scalable concurrency support.]])
whatis([[Configure options : --enable-shared --enable-static --disable-documentation --disable-debug --enable-fill]])

help([[Name   : jemalloc]])
help([[Version: 5.3.0]])
help([[Target : cascadelake]])
help()
help([[jemalloc is a general purpose malloc(3) implementation that emphasizes
fragmentation avoidance and scalable concurrency support.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jemalloc-5.3.0-7bzdwu/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jemalloc-5.3.0-7bzdwu/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jemalloc-5.3.0-7bzdwu/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jemalloc-5.3.0-7bzdwu/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jemalloc-5.3.0-7bzdwu/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jemalloc-5.3.0-7bzdwu/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/jemalloc-5.3.0-7bzdwu/.", ":")
append_path("MANPATH", "", ":")

