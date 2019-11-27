# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *


class Libvpx(AutotoolsPackage):
    """WebM libvpx: VP8/VP9 Codec SDK"""

    homepage = "http://www.example.com"
    git      = "https://chromium.googlesource.com/webm/libvpx.git"

    version('1.8.1', tag='v1.8.1')

    depends_on('nasm')

    def configure_args(self):
        args = []
        return args
