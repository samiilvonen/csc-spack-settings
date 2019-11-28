# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *


class Rtmp(MakefilePackage):
    """RTMPDump, toolkit for RTMP streams"""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://rtmpdump.mplayerhq.hu/"
    git      = "git://git.ffmpeg.org/rtmpdump.git"

    version('master', commit='c5f04a58fc2aeea629')
    
    depends_on('openssl')

    parallel = False
        
    def edit(self, spec, prefix):
        filter_file('prefix=/usr/local', 'prefix={0}'.format(prefix), 'Makefile', string=True)
        filter_file('prefix=/usr/local', 'prefix={0}'.format(prefix), 'librtmp/Makefile', string=True)
