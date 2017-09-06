#!/bin/bash

cd /omd/sites/$OMD_SITE/etc/check_mk/conf.d/wato
git stash
git pull origin master
git-sed -f g engaging $(whoami)

