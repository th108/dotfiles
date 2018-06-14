###########################
#######   Aliases   #######
###########################

alias cd..='cd ..'

# more ls aliases
alias l='ls -lh --color=auto --group-directories-first'
alias ll='ls -alh --color=auto --group-directories-first'
## alias la='ls -A'
## alias ll='ls -CF'
## alias lo='ls -hl --group-directories-first'

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

lyrics ()
{
	# Example: lyrics Korn+Right+Now
    w3m http://search.azlyrics.com/search.php?q=$1
}

