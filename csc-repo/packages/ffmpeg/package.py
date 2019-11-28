# Copyright 2013-2019 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *


class Ffmpeg(AutotoolsPackage):
    """FFmpeg is a complete, cross-platform solution to record,
    convert and stream audio and video. Please note that this
    compilation enables both gpl and non-free dependencies.
    Make sure that you follow the licensing conditions when
    using this version."""

    homepage = "https://ffmpeg.org"
    url      = "http://ffmpeg.org/releases/ffmpeg-4.1.1.tar.bz2"

    version('4.2.1', sha256='682a9fa3f6864d7f0dbf224f86b129e337bc60286e0d00dffcd710998d521624')
    version('4.2',   sha256='306bde5f411e9ee04352d1d3de41bd3de986e42e2af2a4c44052dce1ada26fb8')
    version('4.1.4', sha256='a7e71bd8901b0cfe7087d776263e5d60b94ec5dad6410a07116caf529f278407')
    version('4.1.1', sha256='0cb40e3b8acaccd0ecb38aa863f66f0c6e02406246556c2992f67bf650fab058')
    version('4.1',   sha256='b684fb43244a5c4caae652af9022ed5d85ce15210835bce054a33fb26033a1a5')
    version('3.2.4', sha256='c0fa3593a2e9e96ace3c1757900094437ad96d1d6ca19f057c378b5f394496a4')

    variant('shared', default=True,
            description='build shared libraries')

    variant('aom', default=True,
            description='build Alliance for Open Media libraries')
    variant('x264', default=True,
            description='build with x246 video codec support')
    variant('x265', default=True,
            description='build with x265 video codec support')
    variant('rtmp', default=True,
            description='build with rtmp support')
    variant('vpx', default=True,
            description='build with vpx codec support')
    variant('opus', default=True,
            description='build with opus codecs support')
    variant('lame', default=True,
            description='build with lame mp3 codec support')
    variant('fdk-aac', default=True,
            description='build with fdk-aac codec support')
    variant('avx512', default=False,
            description='enable avx512 optimizations')
    variant('avx2', default=False,
            description='enable avx2 optmizations')
    variant('ssl', default=True,
            description='enable ssl support')

    depends_on('yasm@1.2.0:')
    depends_on('aom',     when='+aom'    )
    depends_on('x264',    when='+x264'   )
    depends_on('x265',    when='+x265'   )
    depends_on('libvpx',  when='+libvpx' )
    depends_on('fdk-aac', when='+fdk-aac')
    depends_on('rtmp',    when='+rtmp'   )
    depends_on('opus',    when='+opus'   )
    depends_on('aom',     when='+aom'    )
    depends_on('openssl', when='+ssl'    )
    depends_on('lame',    when='+lame'   )


    def configure_args(self):
        spec = self.spec
        config_args = ['--enable-pic']

        # TODO: We enable all dependencies by default, add choice
        config_args.append('--enable-gpl')
        config_args.append('--enable-nonfree')

        if '+shared' in spec:
            config_args.append('--enable-shared')

        if '+avx2' in spec:
            config_args.append('--enable-avx2')
        if '+avx512' in spec:
            config_args.append('--enable-avx512')

        if '+aom' in spec:
            config_args.append('--enable-libaom')
        else:
            config_args.append('--disable-libaom')

        if '+x264' in spec:
            config_args.append('--enable-libx264')
        if '+x265' in spec:
            config_args.append('--enable-libx265')
        if '+rtmp' in spec:
            config_args.append('--enable-librtmp')
        if '+opus' in spec:
            config_args.append('--enable-libopus')
        if '+libvpx' in spec:
            config_args.append('--enable-libvpx')
        if '+fdk-aac' in spec:
            config_args.append('--enable-libfdk-aac')
        if '+lame' in spec:
            config_args.append('--enable-libmp3lame')
        if '+ssl' in spec:
            config_args.append('--enable-openssl')

        return config_args
