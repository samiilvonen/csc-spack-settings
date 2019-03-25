
# Setting up the singularity test environment

This readme describes how to run the CSC test version of spack using
singularity. Please note that the build cache won't work outside CSC.

## Clone and set up the correct branches

These commands clone the fork of spack repository and a submodule
that has CSC specific additions (singularity settings) and also
test version of CSC configuration files:
```
    git clone git@github.com:samiilvonen/spack.git spacktesting
    cd spacktesting
    git checkout -t origin/csc/testing
    git submodule init
    git submodule update --remote
    cd site-settings
    git checkout -t origin/csc/singularity
    cd ../..
```
Spack stores the site-specific settings in a bit awkward location,
so we have to create few symbolic links for configuration
files. These links can be created using `link-settings.sh` script:
```
    cd site-settings && ./link-settings.sh
```

## Create the singularity container

These instructions have been tested using default CentOS7 epel
singularity installation (version 2.6).

Assuming that you have a working singularity installation and sudo
rights, you can create the singularity container with the helper
script `create-csctestenv.sh`:
```
    cd site-settings/csc-testenv
    ./create-csctestenv.sh
    cd ../..
```
The script will ask for your password for sudo and create the
container image `csctestimage.sqfs`.

## Running the test environment

Previously created test environment can be run using
`run-csctestenv.sh` script. You can set up the example installation
using the script `install-base.sh` script.

