-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 11:38:43.506675
--
-- slurm@23.11.4%gcc@13.2.0~cgroup~gtk~hdf5~hwloc~mariadb~nvml~pam~pmix+readline~restd~rsmi build_system=autotools sysconfdir=PREFIX/etc arch=linux-rhel8-cascadelake/t4eut4f
--

whatis([[Name : slurm]])
whatis([[Version : 23.11.4]])
whatis([[Target : cascadelake]])
whatis([[Short description : Slurm is an open source, fault-tolerant, and highly scalable cluster management and job scheduling system for large and small Linux clusters.]])
whatis([[Configure options : unknown, software installed outside of Spack]])

help([[Name   : slurm]])
help([[Version: 23.11.4]])
help([[Target : cascadelake]])
help()
help([[Slurm is an open source, fault-tolerant, and highly scalable cluster
management and job scheduling system for large and small Linux clusters.
Slurm requires no kernel modifications for its operation and is
relatively self-contained. As a cluster workload manager, Slurm has
three key functions. First, it allocates exclusive and/or non-exclusive
access to resources (compute nodes) to users for some duration of time
so they can perform work. Second, it provides a framework for starting,
executing, and monitoring work (normally a parallel job) on the set of
allocated nodes. Finally, it arbitrates contention for resources by
managing a queue of pending work.]])



prepend_path("CPATH", "/appl/spack/syslibs/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/syslibs/lib", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/syslibs/lib64", ":")
prepend_path("MANPATH", "/appl/spack/syslibs/share/man", ":")
prepend_path("PATH", "/appl/spack/syslibs/bin", ":")
prepend_path("MANPATH", "/appl/spack/syslibs/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/syslibs/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/syslibs/.", ":")
append_path("MANPATH", "", ":")

