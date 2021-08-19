#!/bin/bash

read -p "Git remote link(use git link only): " gitremotelink
read -p "Git Remote name: " gitremotename
read -p "Destination folder name:" ZZZ

git remote add -f $gitremotename $gitremotelink
git fetch $gitremotename
git merge -s ours --no-commit --allow-unrelated-histories $gitremotename/main
git read-tree --prefix=$ZZZ/ -u $gitremotename/master
git commit -m "Imported $gitremotename as a subtree."