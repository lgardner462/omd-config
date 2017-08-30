#!/bin/bash

git-sed -f g neuro tsstuff
git add . 
git commit -m "testing123" 
git push origin openmindtest
git-sed -f g tsstuff neuro


