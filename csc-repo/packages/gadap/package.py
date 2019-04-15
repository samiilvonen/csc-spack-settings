# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


from spack import *


class Gadap(AutotoolsPackage):
    """A simple GrADS-friendly API for accessing OPeNDAP in-situ data.
    """

    homepage = "http://cola.gmu.edu/grads/gadoc/supplibs.html"
    url      = "ftp://cola.gmu.edu/grads/Supplibs/2.1/src/gadap-2.0.tar.gz"

    version('2.0', sha256='ae9a989ca00ec29fb40616383d170883f07c022456db338399982a8a94ec0100')

    # Fixes from Debian
    patch('libdap-namespace.patch', when='@2.0')
    patch('test-errors.patch', when='@2.0')
    
    depends_on('autoconf', type='build')
    depends_on('automake', type='build')
    depends_on('libtool',  type='build')
    depends_on('m4',       type='build')

    depends_on('libdap')

    def autoreconf(self, spec, prefix):
        autoreconf('--install', '--verbose', '--force')

    def configure_args(self):
        # Compile position independent codej, needed for python library
        args = []
        args.append('CXXFLAGS=' + self.compiler.pic_flag)
        return args
