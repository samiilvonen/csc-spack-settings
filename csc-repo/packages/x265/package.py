# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


from spack import *


class X265(CMakePackage):
    """x265 video codec."""

    homepage = "http//www.x265.org"
    hg       = "https://bitbucket.org/multicoreware/x265"

    version('3.2.1', revision='7fa570e')
    version('3.1.2', revision='4472578')

    depends_on('nasm@2.6:')

    root_cmakelists_dir = 'source'

    def cmake_args(self):
        args = []
        return args
