# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *


class RdmaCore(CMakePackage):
    """RDMA core userspace libraries and daemons"""

    homepage = "https://github.com/linux-rdma/rdma-core"
    url      = "https://github.com/linux-rdma/rdma-core/releases/download/v17.1/rdma-core-17.1.tar.gz"

    version('24.0', sha256='e56e07de4611efda196b4c05b682ab9f82098f58ff703848fc7993cad18c136a')
    version('23',   sha256='ee4de492c8ba6a646b1cea4e3eb865657d481d9db97de55c4e87fa17ed57ee05')
    version('22.1', sha256='d2ba34326c828ebeff26b300761d3c45ffceb76e0a804e9c612d1baf96ad673a')
    version('21.1', sha256='337791ed38dc76dddc0213ef5fd79a6c0c447ff3914c0188e436813ee87cb9d7')

    version('20', sha256='bc846989f807cd2b03643927d2b99fbf6f849cb1e766ab49bc9e81ce769d5421')
    version('17.1', sha256='b47444b7c05d3906deb8771eec3e634984dd83f5e620d5e37d3a83f74f0cc1ba')
    version('13', sha256='e5230fd7cda610753ad1252b40a28b1e9cf836423a10d8c2525b081527760d97')

    depends_on('pkgconfig', type='build')
    depends_on('libnl')
    conflicts('platform=darwin', msg='rdma-core requires FreeBSD or Linux')
    conflicts('%intel', msg='rdma-core cannot be built with intel (use gcc instead)')

# NOTE: specify CMAKE_INSTALL_RUNDIR explicitly to prevent rdma-core from
#       using the spack staging build dir (which may be a very long file
#       system path) as a component in compile-time static strings such as
#       IBACM_SERVER_PATH.
    def cmake_args(self):
        cmake_args = ["-DCMAKE_INSTALL_SYSCONFDIR=" +
                      self.spec.prefix.etc,
                      "-DCMAKE_INSTALL_RUNDIR=/var/run"]
        return cmake_args
