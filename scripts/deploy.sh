#!/bin/bash

set -o errexit -o nounset

cd _site

git init
git config user.name "Jenkins CI"
git config user.email "jenkins@asmlab.org"

git remote add upstream "git@github.com:meyer-lab/asmlab.org.git"
git fetch upstream
git reset upstream/gh-pages

echo "asmlab.org" > CNAME

touch .

git add -A .
git status
git commit -m "Lastest site built on successful travis build $BUILD_ID auto-pushed to github"
git push -q upstream HEAD:gh-pages
