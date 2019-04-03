# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

# ----------------------------------------------------------------------------
# If you submit this package back to Spack as a pull request,
# please first remove this boilerplate and all FIXME comments.
#
# This is a template package file for Spack.  We've put "FIXME"
# next to all the things you'll want to change. Once you've handled
# them, you can save this file and test your package like this:
#
#     spack install rclone
#
# You can edit this file again by typing:
#
#     spack edit rclone
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack import *
import os
import glob
import shutil


class Rclone(Package):
    """FIXME: Put a proper description of your package here."""

    # FIXME: Add a proper url for your package's homepage here.
    # If the-platinum-searcher in spack was working then one could perhaps use that..
    homepage = "https://github.com/ncw/rclone/releases"
    #url      = "https://codeload.github.com/ncw/rclone/tar.gz/v1.46.0"
#dc6957687bf1092720aeff1cc67903135b24bff2b6af8bf9ef1717f31c2c2a9c  rclone-1.46.0.tar.gz
    url = "https://github.com/ncw/rclone/releases/download/v1.46/rclone-v1.46.tar.gz"


    # FIXME: Add proper versions and checksums here.
    version('1.46', '3277e9aca1178707b12d7b7e63247ef3dd0c922d46d63b231f2d60d71e41ade2')

    # FIXME: Add dependencies if required.
    depends_on('go')

    def install(self, spec, prefix):
        # FIXME: Unknown build system
        make()
        
#        try:
#            os.makedirs(prefix)
#        except OSError:
#            pass

	for path, dirs, files in os.walk(prefix):
	  print path
	  for f in files:
	    print f
	for path, dirs, files in os.walk('.'):
	  print path
	  for f in files:
	    print f

	shutil.copy('rclone', prefix)

	# FIXME: how to add rclone to the path?
#	spack_env.prepend_path('PATH', prefix)

#        make('install')

        env['GOPATH'] = self.stage.source_path + ':' + env['GOPATH']
#	make()
#        go('install', self.package, env=env)
#        install_tree('bin', prefix.bin)
