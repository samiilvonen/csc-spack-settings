
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
./link-settings.sh
```
The last script `link-settings.sh` generates few symbolic links for
site-scope settings, which are stored in a bit awkward location
under the main spack repository.

## Create the singularity container

These instructions have been tested using default CentOS7 epel
singularity installation (version 2.6). You can install singularity
with simple `sudo yum install singularity` command.

Assuming that you have a working singularity installation and sudo
rights, you can create the singularity container with the helper
script `create-csctestenv.sh`:
```
cd csc-testenv
./create-csctestenv.sh
```
The script will ask for your password for sudo and create the
container image `csctestimage.sqfs`.

## Running the test environment

Previously created test environment can be run using
`run-csctestenv.sh` script that sets up the correct mounts and
launches singularity. You should see the following prompt:
```
[user@mylaptop csc-testenv]$ ./run-csctestenv.sh 
Singularity: Invoking an interactive shell within container...

[csc/testing] (csc/singularity) ~: ls
install-base.sh
[csc/testing] (csc/singularity) ~: 
```
You can set up the example software tree from the build cache with
`install-base.sh` script.
