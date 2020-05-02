#!/bin/bash
set -e pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

echo "Github Repository: ${GITHUB_REPOSITORY}"

if [[ -z "$GITHUB_REPOSITORY" ]]
then
  echo "GITHUB_REPOSITORY is not set. Exiting"
  exit 1
else
  git config --global user.name "TravisCI"
  git config --global user.email "TravisCI@users.noreply.github.com"

  mkdocs build
  ls -alh
  git clone -n -b gh-pages git@github.com:${GITHUB_REPOSITORY}.git repo
  cd repo
  cp -r ../site/* .
  cp -r ../images .
  cp -r ../CNAME .
  git status
  git add -A .
  git commit -m "Committed from ${TRAVIS_COMMIT}"
  git push origin gh-pages -f
fi