# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *


class X264(AutotoolsPackage):
    """VideoLAN x284 video codec."""

    homepage = "https://www.videolan.org/developers/x264.html"
    git      = "https://code.videolan.org/videolan/x264"

    version('34c06d1c', commit='34c06d1c')

    depends_on('nasm', type='build')

    def configure_args(self):
        args = []
        return args
