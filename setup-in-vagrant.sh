#!/bin/bash 
vagrant up
vagrant halt;
vagrant up;
vagrant ssh -c 'cd setup-vtiger-docker;./prereq.sh;./start-vtiger-docker.sh;'
