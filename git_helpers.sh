#!/bin/bash

# sync fork with original using reset, assume remote name 'upstream'
# uses git reset, don't use if you have unmerged commits
function rst() {
  if [ -z "$1" ]
    then
      echo "Must supply target branch."
      return
  fi
  git checkout $1
  git fetch upstream $1
  git reset --hard upstream/$1
}

# rebase fork with original branch
# assume remote name 'upstream'
function rb() {
  if [ -z "$1" ]
    then
      echo "Must supply target branch."
      return
  fi
  git checkout $1
  git fetch upstream $1
  git rebase upstream/$1
}

