# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *


class Libunwind(AutotoolsPackage):
    """A portable and efficient C programming interface (API) to determine
       the call-chain of a program."""

    homepage = "http://www.nongnu.org/libunwind/"
    url      = "http://download.savannah.gnu.org/releases/libunwind/libunwind-1.1.tar.gz"

    version('1.4.0',   sha256='df59c931bd4d7ebfd83ee481c943edf015138089b8e50abed8d9c57ba9338435')
    version('1.3.2',   sha256='0a4b5a78d8c0418dfa610245f75fa03ad45d8e5e4cc091915d2dbed34c01178e')
    version('1.3.1',   sha256='43997a3939b6ccdf2f669b50fdb8a4d3205374728c2923ddc2354c65260214f8')
    version('1.3.0',   sha256='ec07d537c68a20de129788cd8254e96b1acb75c0ad53aebd0d0f93698138561a')
    # version('1.2.1', '06ba9e60d92fd6f55cd9dadb084df19e')
    # version('1.1', 'fb4ea2f6fbbe45bf032cd36e586883ce')

    variant('xz', default=False,
            description='Support xz (lzma) compressed symbol tables.')

    depends_on('xz', type='link', when='+xz')

    conflicts('platform=darwin',
              msg='Non-GNU libunwind needs ELF libraries Darwin does not have')

    provides('unwind')

    def configure_args(self):
        spec = self.spec
        args = []

        if '+xz' in spec:
            args.append('--enable-minidebuginfo')
        else:
            args.append('--disable-minidebuginfo')

        return args
