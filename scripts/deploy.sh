#!/bin/bash

set -o errexit -o nounset

if [ "$TRAVIS_BRANCH" != "master" ]
then
  echo "This commit was made against the $TRAVIS_BRANCH and not the master! No deploy!"
  exit 0
fi

cd _site

git init
git config user.name "Travis CI"
git config user.email "notifications@travis-ci.org"

git remote add upstream "https://$GH_TOKEN@github.com/meyer-lab/asmlab.org.git"
git fetch upstream
git reset upstream/gh-pages

echo "asmlab.org" > CNAME

touch .

git add -A .
git status
git commit -m "Lastest site built on successful travis build $TRAVIS_BUILD_NUMBER auto-pushed to github"
git push -q upstream HEAD:gh-pages