#!/bin/bash

# Usage: ./publish.sh dest

pushd $1
# pull incase we've updated from somewhere else
git pull
popd

jekyll build -d $1

cd $1
read -p "Ready to commit/push. Are you sure? (y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # do dangerous stuff
    exit 0
fi

echo "Abort"
