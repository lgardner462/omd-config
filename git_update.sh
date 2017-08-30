#!/bin/bash

git-sed -f g eaps tsstuff
git add . 
git commit -m "testing123" 
git push origin e-test
git-sed -f g tsstuff eaps

