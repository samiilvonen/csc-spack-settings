-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 11:38:43.333940
--
-- libevent@2.1.8%gcc@13.2.0+openssl build_system=autotools arch=linux-rhel8-cascadelake/5oiyqzn
--

whatis([[Name : libevent]])
whatis([[Version : 2.1.8]])
whatis([[Target : cascadelake]])
whatis([[Short description : The libevent API provides a mechanism to execute a callback function when a specific event occurs on a file descriptor or after a timeout has been reached. Furthermore, libevent also support callbacks due to signals or regular timeouts.]])
whatis([[Configure options : unknown, software installed outside of Spack]])

help([[Name   : libevent]])
help([[Version: 2.1.8]])
help([[Target : cascadelake]])
help()
help([[The libevent API provides a mechanism to execute a callback function
when a specific event occurs on a file descriptor or after a timeout has
been reached. Furthermore, libevent also support callbacks due to
signals or regular timeouts.]])



prepend_path("CPATH", "/appl/spack/syslibs/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/syslibs/lib", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/syslibs/lib64", ":")
prepend_path("MANPATH", "/appl/spack/syslibs/share/man", ":")
prepend_path("PATH", "/appl/spack/syslibs/bin", ":")
prepend_path("MANPATH", "/appl/spack/syslibs/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/syslibs/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/syslibs/.", ":")
append_path("MANPATH", "", ":")

