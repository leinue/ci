#!/bin/sh

cd $1
git remote add online $2.bare
git push online HEAD:master
#ssh $2 'cd $3 && git pull'
