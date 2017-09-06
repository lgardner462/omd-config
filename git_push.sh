#!/bin/bash

git-sed -f g $(whoami) eaps
git add . 
git commit -m -a "$@"
git push origin master
git-sed -f g eaps $(whoami)

