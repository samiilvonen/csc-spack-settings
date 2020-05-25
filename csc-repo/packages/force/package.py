# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *


class Force(MakefilePackage):
    """FORCE is intended for mass processing of medium-resolution
    satellite image archives. Thus, the hardware requirements are closely
    tied to the data volume of the envisaged project (space / time), as
    well as to the type of sensor (RAM / storage requirements for
    Sentinel-2 are higher than Landsats 4-8)."""

    homepage = "https://www.uni-trier.de/?id=63674"
    url      = "https://www.uni-trier.de/fileadmin/fb6/prof/FER/Downloads/Software/FORCE/force_v2.1_20181204093639.tar.gz"

    version('2.1_20181204093639', sha256='9c9e102a74ea37bca651690a5a8221567c8db9a31b11ecb1bc39e4699d4ae924')

    depends_on('splits')
    depends_on('gdal')
    depends_on('curl')
    depends_on('parallel')
    depends_on('gsl')
    depends_on('unzip')
    depends_on('rename')
    depends_on('liblockfile')

    parallel = False

    def setup_environment(self, spack_env, run_env):
        spack_env.append_flags('CFLAGS', self.compiler.openmp_flag)
        spack_env.append_flags('CXXLFAGS', self.compiler.openmp_flag)
    
    def edit(self, spec, prefix):
        # FIXME: Edit the Makefile if necessary
        # FIXME: If not needed delete this function
        makefile = FileFilter('Makefile')
        #filter_file('BINDIR=/usr/local/bin', 'BINDIR={0}'.format(spec.prefix.bin),
        #            'Makefile', string=True)
        #filter_file('LIBDIR=/usr/local/lib', 'LIBDIR={0}'.format(spec.prefix.lib),
        #            'Makefile', string=True)
        makefile.filter('BINDIR=/usr/local/bin', 'BINDIR={0}'.format(spec.prefix.bin))
        makefile.filter('LIBDIR=/usr/local/lib', 'LIBDIR={0}'.format(spec.prefix.lib))
        makefile.filter('GDAL=-I/usr/include/gdal -L/usr/lib',
                        'GDAL=-I{0} -L{1}'.format(spec['gdal'].prefix.include, spec['gdal'].prefix.lib))        
        mkdirp(self.prefix.bin)
        mkdirp(self.prefix.lib)
        
