-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:29:33.239554
--
-- rapidjson@1.2.0-2022-03-09%gcc@13.2.0~doc~ipo build_system=cmake build_type=Release generator=make patches=a4316c5 arch=linux-rocky8-cascadelake/5tgp77u
--

whatis([[Name : rapidjson]])
whatis([[Version : 1.2.0-2022-03-09]])
whatis([[Target : cascadelake]])
whatis([[Short description : A fast JSON parser/generator for C++ with both SAX/DOM style API]])
whatis([[Configure options : -DRAPIDJSON_BUILD_DOC:BOOL=OFF]])

help([[Name   : rapidjson]])
help([[Version: 1.2.0-2022-03-09]])
help([[Target : cascadelake]])
help()
help([[A fast JSON parser/generator for C++ with both SAX/DOM style API]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/rapidjson-1.2.0-2022-03-09-5tgp77/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/rapidjson-1.2.0-2022-03-09-5tgp77/lib", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/rapidjson-1.2.0-2022-03-09-5tgp77/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/rapidjson-1.2.0-2022-03-09-5tgp77/.", ":")

