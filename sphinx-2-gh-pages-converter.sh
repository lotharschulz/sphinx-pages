#!/bin/bash
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

# get a clean master branch assuming
git checkout master
git pull origin master
git checkout -- .
git clean -df
git fetch --all

# build html docs from sphinx files
sphinx-build -b html . _build

# create or use orphaned gh-pages branch
branch_name=gh-pages
if [ $(git branch --list $branch_name) ]
then
	git checkout $branch_name
else
	git checkout --orphan $branch_name
fi

ls | grep -v _build | xargs rm -r
mv _build/* . && rm -rf _build
git add .
git commit -m "new pages version"
git push origin gh-pages
# github.com recognizes gh-pages branch and create pages
# url scheme https//:[github-handle].github.io/[repository]
