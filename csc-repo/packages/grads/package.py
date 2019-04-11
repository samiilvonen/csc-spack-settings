# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


from spack import *


class Grads(AutotoolsPackage):
    """The Grid Analysis and Display System (GrADS) is an interactive
    desktop tool that is used for easy access, manipulation, and
    visualization of earth science data. GrADS has two data models for
    handling gridded and station data. GrADS supports many data file
    formats, including binary (stream or sequential), GRIB (version 1 and
    2), NetCDF, HDF (version 4 and 5), and BUFR (for station data). GrADS
    has been implemented worldwide on a variety of commonly used operating
    systems and is freely distributed over the Internet.
    """
    
    homepage = "http://cola.gmu.edu"
    url      = "ftp://cola.gmu.edu/grads/2.2/grads-2.2.1-src.tar.gz"

    version('2.2.1', sha256='695e2066d7d131720d598bac0beb61ac3ae5578240a5437401dc0ffbbe516206')

    # Fixes for autoreconf, from Debian packaging
    patch('shp-fix.patch',            when='@2.2.1')
    patch('cairo-fix.patch',          when='@2.2.1')
    patch('cairo-fix-include.patch',  when='@2.2.1')
    patch('gadap-fix.patch',          when='@2.2.1')
    patch('ifdefhdf.patch',           when='@2.2.1')
    patch('configure-ac-fixes.patch', when='@2.2.1')
    
    depends_on('autoconf', type='build')
    depends_on('automake', type='build')
    depends_on('libtool',  type='build')
    depends_on('m4',       type='build')

    variant('geotiff',  default=False, description='Enable geotiff support')
    variant('X',        default=False, description='Use X Window system')
    variant('hdf5',     default=False, description='Enable hdf5 support')
    variant('gadap',    default=False, description='Enable OpeNDAP support')
    variant('udunits2', default=False, description='Enable udunits2 unit conversion support')
    variant('pic',      default=False, description='Try to use only PIC objects')
    
    depends_on('libgd')
    depends_on('libxml2')
    depends_on('cairo+X', type=('build', 'link'))
    depends_on('shapefile')
    depends_on('libxmu')
    depends_on('libgeotiff', when='+geotiff')
    depends_on('hdf5~mpi',   when='+hdf5')
    depends_on('gadap',      when='+gadap')
    depends_on('udunits2',   when='+udunits2')
    depends_on('libxpm',     when='+X')
    depends_on('libxaw',     when='+X')
    depends_on('libxmu',     when='+X')
    depends_on('libxt',      when='+X')
    
    parallel = False
    
    def autoreconf(self, spec, prefix):
        autoreconf('--install', '--verbose', '--force')

    def setup_environment(self, spack_env, run_env):
        spack_env.set('SUPPLIBS', '/tmp')
        run_env.set('GAUDPT', self.prefix + '/udpt.txt')
        
    def configure_args(self):
        config_args = []
        cppflags = []
        config_args.append('--with-gnu-ld')
        config_args.append('--enable-dyn-supplibs')
        cppflags.append('-I' + self.spec['cairo'].prefix.include + '/cairo')
        
        if '+udunit2' in self.spec:
            config_args.append('--with-udunits=' + self.spec['udunits2'].prefix)

        if '+geotiff' in self.spec:
            config_args.append('--with-geotiff=' + self.spec['libgeotiff'].prefix)

        if '+hdf5' in self.spec:
            config_args.append('--with-hdf5=' + self.spec['hdf5'].prefix)
            
        if '+gadap' in self.spec:
            config_args.append('--with-gadap')

        if '+X' in self.spec:
            config_args.append('--with-x')

        config_args.append('CPPFLAGS=' + ' '.join(cppflags))
            
        return config_args

    
    @run_after('install')
    def install_udpt_file(self):
        with open(self.spec.prefix + '/udpt.txt', 'w+') as udptfile:
            udptfile.write('# Type     Name     Full path to shared object file\n')
            udptfile.write('# ----     ----     -------------------------------\n')
            udptfile.write('gxdisplay  Cairo    {}/libgxdCairo.so\n'.format(self.prefix.lib))
            if '+X' in self.spec:
                udptfile.write('gxdisplay  X11      {}/libgxdX11.son\n'.format(self.prefix.lib))
            udptfile.write('gxdisplay  gxdummy  {}/libgxdummy.so\n*\n'.format(self.prefix.lib))

            udptfile.write('gxprint    Cairo    {}/libgxpCairo.so\n'.format(self.prefix.lib))
            udptfile.write('gxprint    GD       {}/libgxpGD.so\n'.format(self.prefix.lib))
            udptfile.write('gxprint    gxdummy  {}/libgxdummy.so\n'.format(self.prefix.lib))
