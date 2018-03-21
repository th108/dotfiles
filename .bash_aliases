alias nanov='nano -v'
alias cd..='cd ..'

###########################
#######  Functions  #######
###########################

dl ()
{
    wget --spider $1 2>&1 | grep 'Length'
    read -p "Continue to download file? " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
        then
            wget --quiet --show-progress $1
        fi
}

clone ()
{
    cp --preserve --recursive $1 $1.bak
}
