# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


from spack import *


class FdkAac(AutotoolsPackage):
    """A standalone library of the Fraunhofer FDK AAC code from Android"""

    homepage = "https://sourceforge.net/projects/opencore-amr/"
    url      = "https://github.com/mstorsjo/fdk-aac/archive/v2.0.1.tar.gz"

    version('2.0.1', sha256='a4142815d8d52d0e798212a5adea54ecf42bcd4eec8092b37a8cb615ace91dc6')
    version('2.0.0', sha256='6e6c7921713788e31df655911e1d42620b057180b00bf16874f5d630e1d5b9a2')
    version('0.1.6', sha256='adbcd793e406e1b88b3c1c41382d49f8c27371485b823c0fdab69c9124fd2ce3')

    depends_on('autoconf', type='build')
    depends_on('automake', type='build')
    depends_on('libtool', type='build')

    def autoreconf(self, spec, prefix):
        autoreconf = which('autoreconf')
        autoreconf('-ifv')

    def configure_args(self):
        args = []
        return args
