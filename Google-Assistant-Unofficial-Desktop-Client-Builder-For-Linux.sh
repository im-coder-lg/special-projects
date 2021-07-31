#!/bin/bash

echo Hi. I am your GAUDC program installation automator. && echo This code is open-source as a GitHub Gist, and I am LG, it's author. && echo Feel free to comment on any issues :)

echo Now, make sure you installed Git and NodeJS because you need to clone and build GAUDC. I will make a temporary directory and give you the path in the end!

echo now, I am gonna make a tmp folder for gaudc named gaudc

cd && mkdir GAUDC && cd GAUDC

echo Now, I will clone and install the files for you!

git clone https://github.com/Melvin-Abraham/Google-Assistant-Unofficial-Desktop-Client.git && cd Google-Assistant-Unofficial-Desktop-Client

echo Now, I will install and build the GAUDC files!

npm install && npm run dist

echo Your GAUDC is built. Now, you can go to your $HOME directory, then into GAUDC and finally, Google-Assistant-Unofficial-Desktop-Client directory, move to your `dist` directory, and, check the folders because I am a Linux noob.