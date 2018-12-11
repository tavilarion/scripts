#!/bin/bash

# sync fork with original
# uses git reset, don't use if you have unmerged commits
function rb() {
  if [ -z "$1" ]
    then
      echo "Must supply target branch."
      return
  fi	
  git checkout $1
  git fetch upstream $1
  git reset --hard upstream/$1
}

