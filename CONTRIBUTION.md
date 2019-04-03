# Instructions for how to contribute to this git repo

This is a *work in progress* document.

See [[SETUP.MD]] to run the spack commands. 

Then exit the singularity container and change to the site-settings directory

Some git commands examples:

 - git checkout -B csc/PR/$NEWFEATURE # this creates a new branch called csc/pr/$NEWFEATURE. Replace $NEWFEATURE with something descriptive.
 - git add csc-repo/packages/$NEWFEATURE/package.py # this adds the package.py for the new package
 - git commit -v # write a commit message, -v shows which files you are committing [[https://chris.beams.io/posts/git-commit/]]

Next is to fork the csc-spack-settings repo. Go to [[https://github.com/samiilvonen/csc-spack-settings]] and click "fork" and choose your private account.

Next we need to add your fork as a remote to the git clone on your laptop:

 - git remote add myfork git@github.com:$MYGITHUBUSERNAME/csc-spack-settings
 - git fetch myfork
 - git push myfork csc-repo/packages/$NEWFEATURE

Next we go to github and click a green button with words like "create Pull Request". 

The PR must go to the *csc/singularity* branch, not the master branch (which is the default branch as configured in github)

Instructions for how to sync your fork with the main csc-spack-settings repo: TBA
