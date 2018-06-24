#!/bin/bash 
docker stop vtiger
docker stop mysql
docker container prune --force
