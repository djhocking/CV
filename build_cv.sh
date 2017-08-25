#!/bin/bash

set -eu
set -o pipefail

# run make to build pdf and html
make

# commit and push to github
cp CV.html index.html
git add --all
git commit -m "auto commit build CV"
git push origin master

# Copy index.html to gh-pages branch
git checkout gh-pages
git checkout master index.html
git add index.html
git commit -m "auto commit cv html build for webpage"

# Push html to github pages
git push origin gh-pages
git checkout master
