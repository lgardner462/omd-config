#!/bin/bash

git-sed -f g engaging tsstuff
git add . 
git commit -m "testing123" 
git push origin engagingtest
git-sed -f g tsstuff engaging

