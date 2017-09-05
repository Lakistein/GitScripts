#!/bin/sh 

if [ -z "$1" ]; then echo "Please provide branch name"
else
	git checkout master;
	git pull;
	git checkout -b $1 master;
fi