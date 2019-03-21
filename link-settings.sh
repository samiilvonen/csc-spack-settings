#!/bin/bash

files="packages.yaml config.yaml modules.yaml"
settingspath="site-config"
etcpath="../etc"

for cfile in ${files}; do
    if [ -L ${etcpath}/${cfile} ] && [ -e ${etcpath}/${cfile} ] ; then
        echo "Symlink ${etcpath}/${cfile} in place."
    else
        ln -s ${settingspath}/${cfile} ${etcpath}/${cfile}
        echo "Symlink to ${cfile} created."
    fi
done

    
