-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:32:47.133781
--
-- thrift@0.18.1%gcc@13.2.0+c~java+pic+python build_system=generic arch=linux-rocky8-cascadelake/ojq6evk
--

whatis([[Name : thrift]])
whatis([[Version : 0.18.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : Software framework for scalable cross-language services development.]])

help([[Name   : thrift]])
help([[Version: 0.18.1]])
help([[Target : cascadelake]])
help()
help([[Software framework for scalable cross-language services development.
Thrift combines a software stack with a code generation engine to build
services that work efficiently and seamlessly between C++, Java, Python,
PHP, Ruby, Erlang, Perl, Haskell, C#, Cocoa, JavaScript, Node.js,
Smalltalk, OCaml and Delphi and other languages.]])


depends_on("boost/1.85.0")
depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("libevent/2.1.8")
depends_on("openssl/1.1.1k")
depends_on("py-pure-sasl/0.6.2")
depends_on("py-setuptools/69.2.0")
depends_on("py-six/1.16.0")
depends_on("py-tornado/6.3.3")
depends_on("py-twisted/15.4.0")
depends_on("py-zope-interface/5.4.0")
depends_on("python/3.11.7")
depends_on("python-venv/1.0")
depends_on("scons/4.5.2")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/thrift-0.18.1-ojq6ev/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/thrift-0.18.1-ojq6ev/lib", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/thrift-0.18.1-ojq6ev/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/thrift-0.18.1-ojq6ev/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/thrift-0.18.1-ojq6ev/.", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/thrift-0.18.1-ojq6ev/lib/python3.11/site-packages", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/scons-4.5.2-giy36n/lib/scons", ":")

