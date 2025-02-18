-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 14:06:02.484043
--
-- boost@1.85.0%gcc@13.2.0~atomic~chrono~clanglibcpp+container+context~contract+coroutine~date_time~debug~exception~fiber~filesystem~graph~graph_parallel+icu~iostreams~json~locale~log~math+mpi+multithreaded~nowide~numpy~pic~program_options~python~random~regex~serialization+shared~signals~singlethreaded~stacktrace~system~taggedlayout~test~thread~timer~type_erasure~versionedlayout~wave build_system=generic context-impl=fcontext cxxstd=17 patches=a440f96,b8569d7 visibility=hidden arch=linux-rhel8-cascadelake/5yth6ef
--

whatis([[Name : boost]])
whatis([[Version : 1.85.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : Boost provides free peer-reviewed portable C++ source libraries, emphasizing libraries that work well with the C++ Standard Library.]])

help([[Name   : boost]])
help([[Version: 1.85.0]])
help([[Target : cascadelake]])
help()
help([[Boost provides free peer-reviewed portable C++ source libraries,
emphasizing libraries that work well with the C++ Standard Library.
Boost libraries are intended to be widely useful, and usable across a
broad spectrum of applications. The Boost license encourages both
commercial and non-commercial use.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("icu4c/67.1")
depends_on("openmpi/5.0.5")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/boost-1.85.0-5yth6e/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/boost-1.85.0-5yth6e/lib", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/boost-1.85.0-5yth6e/.", ":")
setenv("BOOST_ROOT", "/appl/spack/v022/install-tree/gcc-13.2.0/boost-1.85.0-5yth6e")

