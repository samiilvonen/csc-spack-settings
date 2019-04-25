#!/bin/bash
# This script creates symlinks from csc git submodule to
# the $spack/etc/spack directory (location of site scope
# settings).

files="packages.yaml config.yaml modules.yaml mirrors.yaml compilers.yaml repos.yaml"
settingspath="site-config"
etcpath="../etc/spack"

for cfile in ${files}; do
    if [ -L ${etcpath}/${cfile} ] && [ -e ${etcpath}/${cfile} ] ; then
        echo "Symlink ${etcpath}/${cfile} already in place."
    else
        ln -sr ${settingspath}/${cfile} ${etcpath}/${cfile}
        echo "Symlink to ${cfile} created."
    fi
done

