#!/bin/sh
date > date.txt 
git commit -am "DEMODEV-15 #comment 我在 $(date) 修复了一个问题"
git push
