#!/bin/bash
set -euxo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

pip3 install -r requirements.txt

if [ -n "${GITHUB_REPOSITORY:-}" ] && ! git config --get user.name; then
  git config --global user.name "TravisCI"
  git config --global user.email "TravisCI@users.noreply.github.com"
  git remote rm origin
  git remote add origin "git@github.com:${GITHUB_REPOSITORY}.git"
  eval "$(ssh-agent)"
  ssh-add <(echo "$GH_PAGES_DEPLOY_KEY")
  trap "ssh-agent -k" EXIT

  mkdocs build
  git clone git@github.com:${GITHUB_REPOSITORY}.git repo
  cd repo
  git checkout gh-pages
  shopt -s extglob
  rm -rf ./!(.git|.|..)
  cp -r ../site/*
  cp -r ../images .
  cp -r ../CNAME .  
  git add -A .
  git commit -m "Committed from ${TRAVIS_COMMIT}"
  git push origin gh-pages -f
fi