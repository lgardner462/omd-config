#!/bin/bash

git-sed -f g tssetup tssetup
git add . 
git commit -m "testing123" 
git push origin om-test
git-sed -f g tssetup tssetup


