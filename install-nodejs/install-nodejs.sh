#!/bin/bash
echo "What version of Node JS do you want? The LTS or the latest release?"
echo "Respond with LTS or latest(case sensitive)"
read versionofnode
if [ "$versionofnode" = "LTS" ]; then
  sudo apt-get install curl software-properties-common
  curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
  sudo apt install nodejs
  node -v && npm -v
fi
if [ "$versionofnode" = "latest" ]; then
  sudo apt-get install curl software-properties-common
  curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
  sudo apt install nodejs
  node -v && npm -v
fi
# wip
# echo "Node JS is installed. Do you want to test it?"
# echo "Respond with yes or no(case sensitive)"
# read test
# if [ "$test" = "yes" ]; then

# fi