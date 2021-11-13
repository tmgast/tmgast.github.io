#!/usr/bin/env sh

# abort on errors

set -e

#build

yarn run build

#nav into build dir

cd dist

# deploy to pages branch

git init

git add -A

git commit -m 'deploy'

git push -f git@github.com:tmgast/tmgast.github.io.git master:gh-pages

cd -
