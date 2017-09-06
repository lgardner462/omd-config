#!/bin/bash

su - eaps
cd /omd/sites/eaps/etc/check_mk/conf.d/wato
git pull origin master
git-sed -f g eaps $(whoami)

