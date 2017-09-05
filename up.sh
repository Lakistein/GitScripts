#!/bin/sh 

bnn=${1:-$(git symbolic-ref --short -q HEAD)};
git stash;
git checkout master;
git pull;
git checkout $bnn;
git merge master;
git stash pop;
