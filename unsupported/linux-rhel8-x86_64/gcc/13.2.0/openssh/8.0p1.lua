-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 11:38:43.446748
--
-- openssh@8.0p1%gcc@13.2.0+gssapi build_system=autotools arch=linux-rhel8-cascadelake/cyncdc3
--

whatis([[Name : openssh]])
whatis([[Version : 8.0p1]])
whatis([[Target : cascadelake]])
whatis([[Short description : OpenSSH is the premier connectivity tool for remote login with the SSH protocol. It encrypts all traffic to eliminate eavesdropping, connection hijacking, and other attacks. In addition, OpenSSH provides a large suite of secure tunneling capabilities, several authentication methods, and sophisticated configuration options. ]])
whatis([[Configure options : unknown, software installed outside of Spack]])

help([[Name   : openssh]])
help([[Version: 8.0p1]])
help([[Target : cascadelake]])
help()
help([[OpenSSH is the premier connectivity tool for remote login with the SSH
protocol. It encrypts all traffic to eliminate eavesdropping, connection
hijacking, and other attacks. In addition, OpenSSH provides a large
suite of secure tunneling capabilities, several authentication methods,
and sophisticated configuration options.]])



prepend_path("CPATH", "/appl/spack/syslibs/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/syslibs/lib", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/syslibs/lib64", ":")
prepend_path("MANPATH", "/appl/spack/syslibs/share/man", ":")
prepend_path("PATH", "/appl/spack/syslibs/bin", ":")
prepend_path("MANPATH", "/appl/spack/syslibs/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/syslibs/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/syslibs/.", ":")
append_path("MANPATH", "", ":")

