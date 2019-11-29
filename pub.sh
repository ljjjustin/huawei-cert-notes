#!/bin/bash

# build pages
rm -fr _book && gitbook build

# check if there is any error
if [ $? -ne 0 ]; then
    exit
fi

# push to github
git add .
git commit -m "update at $(date '+%Y-%m-%d %H:%M:%S')"
git push origin master
