#!/bin/sh
date > date.txt 
git commit -am "DEMODEV-15 #comment fixed at $(date)"
git push
