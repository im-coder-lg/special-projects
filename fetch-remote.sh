echo "Do you want to pull the latest commits from the subtrees? Type 'yes' or 'no'"

read latestcommits 

if [ "$latestcommits" = "yes" ]; then
    read -p "Subtree remote name:" subtreeremotename
    git pull -s subtree $subtreeremotename master
fi

if [ "$latestcommits" = "no" ]; then
    echo "Stopping the process..."
    exit
fi