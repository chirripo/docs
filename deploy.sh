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
  git remote rm origin
  git remote add origin "git@github.com:${GITHUB_REPOSITORY}.git"

  mkdocs build
  ls -alh
  git clone git@github.com:${GITHUB_REPOSITORY}.git repo
  cd repo
  git checkout gh-pages
  shopt -s extglob
  rm -rf !(.git|.|..)
  cp -r ../site/*
  cp -r ../images .
  cp -r ../CNAME .
  git status
  git add -A .
  git commit -m "Committed from ${TRAVIS_COMMIT}"
  git push origin gh-pages -f
fi