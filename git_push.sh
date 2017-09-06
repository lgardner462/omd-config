#!/bin/bash

git-sed -f g $(whoami) neuro
git add . 
git commit -m -a "$@"
git push origin master
git-sed -f g neuro $(whoami)

