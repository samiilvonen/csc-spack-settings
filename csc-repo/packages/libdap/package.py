# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


from spack import *


class Libdap(AutotoolsPackage):
    """Implementation of OPeNDAP's DAP protocol.
    """

    homepage = "http://www.opendap.org"
    url      = "https://www.opendap.org/pub/source/libdap-3.18.1.tar.gz"

    version('3.20.3', sha256='29961922b53f62e9d4eb34d1d50ddc23a24100664f97b71f42561fa5588ccc58')
    version('3.20.2', sha256='60eafd74f6e415b31de05078002ec82807c12be4f4fa7e8c7f982322e12be34e')
    version('3.20.1', sha256='1e34d08145052436f2d468b8d6764c143eba1bc2e74481e7e568f0f96ae5cc7a')
    version('3.20.0', sha256='2241aaf326f84c59012b3d73782e244ff1cce60a7acd8c711ba8e04fdb692333')
    version('3.19.1', sha256='5215434bacf385ba3f7445494ce400a5ade3995533d8d38bb97fcef1478ad33e')
    version('3.19.0', sha256='59c384c2da01104a4ef37f010f3bcf5d46e85e30fcfc942c9181e17128f168a5')

    depends_on('autoconf', type='build')
    depends_on('automake', type='build')
    depends_on('libtool',  type='build')
    depends_on('m4',       type='build')

    depends_on('libuuid')
    depends_on('libxml2')

    def autoreconf(self, spec, prefix):
        autoreconf('--install', '--verbose', '--force')

