-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:23:44.615593
--
-- nghttp2@1.57.0%gcc@13.2.0 build_system=autotools arch=linux-rhel8-cascadelake/nu3b3fw
--

whatis([[Name : nghttp2]])
whatis([[Version : 1.57.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : nghttp2 is an implementation of HTTP/2 and its header compression algorithm HPACK in C.]])
whatis([[Configure options : --enable-lib-only --with-libxml2=no --with-jansson=no --with-zlib=no --with-libevent-openssl=no --with-libcares=no --with-openssl=no --with-libev=no --with-cunit=no --with-jemalloc=no --with-systemd=no --with-mruby=no --with-neverbleed=no --with-boost=no]])

help([[Name   : nghttp2]])
help([[Version: 1.57.0]])
help([[Target : cascadelake]])
help()
help([[nghttp2 is an implementation of HTTP/2 and its header compression
algorithm HPACK in C.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/nghttp2-1.57.0-nu3b3f/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/nghttp2-1.57.0-nu3b3f/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/nghttp2-1.57.0-nu3b3f/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/nghttp2-1.57.0-nu3b3f/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/nghttp2-1.57.0-nu3b3f/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/nghttp2-1.57.0-nu3b3f/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/nghttp2-1.57.0-nu3b3f/.", ":")
append_path("MANPATH", "", ":")

