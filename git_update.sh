#!/bin/bash

git-sed -f g tsstuff tsstuff
git add . 
git commit -m "testing123" 
git push origin tsstufftest
git-sed -f g tsstuff tsstuff

