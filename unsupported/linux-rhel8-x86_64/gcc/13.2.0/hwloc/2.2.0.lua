-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 11:38:43.283810
--
-- hwloc@2.2.0%gcc@13.2.0~cairo~cuda~gl~libudev+libxml2~netloc~nvml~oneapi-level-zero~opencl+pci~rocm build_system=autotools libs=shared,static arch=linux-rhel8-cascadelake/v3kndi5
--

whatis([[Name : hwloc]])
whatis([[Version : 2.2.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : The Hardware Locality (hwloc) software project.]])
whatis([[Configure options : unknown, software installed outside of Spack]])

help([[Name   : hwloc]])
help([[Version: 2.2.0]])
help([[Target : cascadelake]])
help()
help([[The Hardware Locality (hwloc) software project. The Portable Hardware
Locality (hwloc) software package provides a portable abstraction
(across OS, versions, architectures, ...) of the hierarchical topology
of modern architectures, including NUMA memory nodes, sockets, shared
caches, cores and simultaneous multithreading. It also gathers various
system attributes such as cache and memory information as well as the
locality of I/O devices such as network interfaces, InfiniBand HCAs or
GPUs. It primarily aims at helping applications with gathering
information about modern computing hardware so as to exploit it
accordingly and efficiently.]])



prepend_path("CPATH", "/appl/spack/syslibs/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/syslibs/lib", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/syslibs/lib64", ":")
prepend_path("MANPATH", "/appl/spack/syslibs/share/man", ":")
prepend_path("PATH", "/appl/spack/syslibs/bin", ":")
prepend_path("MANPATH", "/appl/spack/syslibs/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/syslibs/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/syslibs/.", ":")
append_path("MANPATH", "", ":")

