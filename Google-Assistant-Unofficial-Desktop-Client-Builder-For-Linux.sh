#!/bin/bash

@ECHO OFF # --> compulsory if you don't want inputs.

echo Hi. I am your GAUDC program installation automator. && echo This code is open-source as a GitHub Gist, and I am LG, the maker of the GAUDC builder via shell script. && echo Feel free to comment on any issues. # --> Beginning Message

echo Now, make sure you installed Git and NodeJS because you need to clone and build GAUDC. I will make a temporary directory and give you the path at the end # --> Next message

echo now, I am gonna make a tmp folder named gaudc # --> alert message sort

cd && mkdir GAUDC && cd GAUDC # --> making the folder and `cd`ing to the folder

echo Now, I will clone and install the files. # -->another alert message

git clone https://github.com/Melvin-Abraham/Google-Assistant-Unofficial-Desktop-Client.git && cd Google-Assistant-Unofficial-Desktop-Client # --> cloning and `cd`ing

echo Now, I will install and build the GAUDC files # -->next alert

npm install && npm run dist # --> installs and builds

echo Your GAUDC is built. Now, you can go to your $HOME directory, and afterwards, into GAUDC and finally, Google-Assistant-Unofficial-Desktop-Client directory, move to your `dist` directory, and, check the folders because I am a Linux noob. && echo Path to GAUDC: && pwd # --> End Message
