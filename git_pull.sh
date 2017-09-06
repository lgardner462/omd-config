#!/bin/bash

cd /omd/sites/tsstuff/etc/check_mk/conf.d/wato
git pull origin master
git-sed -f g tsstuff $(whoami)

