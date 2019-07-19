# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import os
from spack import *


class Cudnn(Package):
    """NVIDIA cuDNN is a GPU-accelerated library of primitives for deep
    neural networks"""

    homepage = "https://developer.nvidia.com/cudnn"

    version('7.6.1.34-10.1',
            url='file://{0}/cudnn-10.1-linux-x64-v7.6.1.34.tgz'.format(os.getcwd()),
            sha256='9885e38e71fa9844b3e4fb7c7211af41b24c9f76a9014f9d5e1768ddff2087dc')

    version('7.6.1.34-10.0',
            url='file://{0}/cudnn-10.0-linux-x64-v7.6.1.34.tgz'.format(os.getcwd()),
            sha256='af0791cba08468a4bf2a4ef15a787dac261f41219caaf335984d47d11eca19ba')

    version('7.6.1.34-9.2',
            url='file://{0}/cudnn-9.2-linux-x64-v7.6.1.34.tgz'.format(os.getcwd()),
            sha256='0d38735b06a1daf518c7ad4977fdb987a470f7793d95542ac9897e214ab1b006')

    depends_on('cuda@9.2.88',   when='@7.6.1.34-9.2')
    depends_on('cuda@10.0.130', when='@7.6.1.34-10.0')
    depends_on('cuda@10.1.168', when='@7.6.1.34-10.1')

    def install(self, spec, prefix):
        install_tree('.', prefix)
