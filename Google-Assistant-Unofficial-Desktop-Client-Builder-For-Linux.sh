#!/bin/bash

echo "Hi. I am your GAUDC program installation automator." && echo "This code is open-source as a GitHub Gist, and I am LG, the maker of this script." && echo Feel free to comment on any issues. # --> Beginning Message

echo "Now, make sure you installed Git and NodeJS because you need to clone and build GAUDC. I will make a temporary directory and give you the path at the end." # --> Next message

echo "Have you installed Git and NodeJS? Because, the script needs it."

echo "If you have it, respond with 'yes' as it is. If not, respond with 'no' as it is."

read gitnodejs

if [ "$gitnodejs" = "no" ]; then
    echo "Well, do you wanna install it? Respond with 'yes' or 'no'"
    read nodeinstall
    if [ "$nodeinstall" = "yes" ]; then
        echo "This needs sudo perms, YOU allow it."
        sudo apt install git curl software-properties-common
        curl -sL https://deb.nodesource.com/setup_16.x | sudo bash - 
        sudo apt install nodejs
        echo "Now that NodeJS is installed, let's just go check the version."
        node --version
        echo "If it came properly, type yes. If it showed an error, click no."
        read nodeinstallsuccess
        if [ "$nodeinstallsuccess" = "yes" ]; then

            echo "Then, what are we waiting for? Let's go!"

            echo now, I am gonna make a tmp folder named gaudc # --> alert message sort

            cd && mkdir GAUDC && cd GAUDC # --> making the folder and `cd`ing to the folder

            echo Now, I will clone and install the files. # -->another alert message

            git clone https://github.com/Melvin-Abraham/Google-Assistant-Unofficial-Desktop-Client.git && cd Google-Assistant-Unofficial-Desktop-Client # --> cloning and `cd`ing

            echo Now, I will install and build the GAUDC files # -->next alert

            npm install && npm run dist # --> installs and builds

            echo Your GAUDC is built. Now, you can go to your $HOME directory, and afterwards, into GAUDC and finally, Google-Assistant-Unofficial-Desktop-Client directory, move to your `dist` directory, and, check the folders because I am a Linux noob. && echo Path to GAUDC: && pwd # --> End Message


        fi

        if [ "$nodeinstallsuccess" = "no" ]; then

            echo "Try visiting the code and reinstall NodeJS the same way I did or got to NodeJS' official website, install it and try again."
            echo "Ending..."
            exit
    
        fi

fi

if [ "$gitnodejs" = "yes" ]; then
    echo "Well, let's just go ahead."
    echo now, I am gonna make a tmp folder named gaudc # --> alert message sort

    cd && mkdir GAUDC && cd GAUDC # --> making the folder and `cd`ing to the folder

    echo Now, I will clone and install the files. # -->another alert message

    git clone https://github.com/Melvin-Abraham/Google-Assistant-Unofficial-Desktop-Client.git && cd Google-Assistant-Unofficial-Desktop-Client # --> cloning and `cd`ing

    echo Now, I will install and build the GAUDC files # -->next alert

    npm install && npm run dist # --> installs and builds

    echo Your GAUDC is built. Now, you can go to your $HOME directory, and afterwards, into GAUDC and finally, Google-Assistant-Unofficial-Desktop-Client directory, move to your `dist` directory, and, check the folders because I am a Linux noob. && echo Path to GAUDC: && pwd # --> End Message

fi

### Old code

# echo now, I am gonna make a tmp folder named gaudc # --> alert message sort

# cd && mkdir GAUDC && cd GAUDC # --> making the folder and `cd`ing to the folder

# echo Now, I will clone and install the files. # -->another alert message

# git clone https://github.com/Melvin-Abraham/Google-Assistant-Unofficial-Desktop-Client.git && cd Google-Assistant-Unofficial-Desktop-Client # --> cloning and `cd`ing

# echo Now, I will install and build the GAUDC files # -->next alert

# npm install && npm run dist # --> installs and builds

# echo Your GAUDC is built. Now, you can go to your $HOME directory, and afterwards, into GAUDC and finally, Google-Assistant-Unofficial-Desktop-Client directory, move to your `dist` directory, and, check the folders because I am a Linux noob. && echo Path to GAUDC: && pwd # --> End Message
