#!/bin/bash

su - $OMD_SITE
cd /omd/sites/$OMD_SITE/etc/check_mk/conf.d/wato
git pull origin master
git-sed -f g tsstuff $(whoami)

