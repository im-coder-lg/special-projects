#!/bin/bash

echo "Hi! What is your name?"

echo "Name:" && read name

echo "Hi $name! How are you doing?"

echo "If you are fine, enter 'Fine'. If not, enter 'Not Fine'"

echo "How you are doing:" && read hyad

if [ "$hyad" = "Fine" ]; then
    echo "Me too! I am also fine here!"

fi

if [ "$hyad" = "Not Fine" ]; then
    echo "same here. Not fine at all :("

fi

echo "Would you like to update your 'apt' repositories and upgrade them if necessary?"
echo "Respond with 'yes' or 'no'"

read aptupdate

if [ "$aptupdate" = "yes" ]; then
    echo "updating apt repositories. Enter your password when sudo prompts :)"
    sudo apt update
    echo "'apt' repositories updated. Upgrading those VIP repositories(jk but upgrade real)"
    echo "Yes or no? Respond with yes or no"
    read aptupgrade
    if [ "$aptupgrade" = "yes" ]; then

        sudo apt upgrade

    fi
fi

echo "What else do you want to do? Respond with 'something more' or 'nothing'"

read choice2

if [ "$choice2" = "something more" ]; then
    echo "Why not you search GitHub for fascinating projects?"
fi

if [ "$choice2" = "nothing" ]; then
    echo "Stopping this process. Goodbye(for now.)"
    exit
fi




# Bloopers in the code:
# else
#     echo no
    
# fi


# echo "Me too. $hyad here."


# if [ "$hyad" = "Not Fine" ]; then
#     echo "Same here dude. Not fine at all"

# if $hyad == Fine then
