###########################
#######   Aliases   #######
###########################

# navigation
alias ..='cd ..'
alias ...='cd ../..'
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

2unix()
{
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    filter_name=$(echo "$arg" | sed 's/%20/ /g' | sed 's/ /_/g' | tr '[:upper:]' '[:lower:]')
    mv -- "$arg" "$filter_name"
  done
}


###########################
##########  fzf  ##########
###########################

services() {
    systemctl list-units --no-pager --no-legend | awk '{ print $1 }' | grep -v '\-.slice\|\-.mount' | fzf --preview-window=up:50% --preview 'SYSTEMD_COLORS=1 systemctl status {}'
}

man() {
    apropos '' | fzf --preview-window=right:40% --preview 'echo {} | cut -f 1 -d " " | xargs man' | cut -f 1 -d " " | xargs man
}

preview() {
    fzf --preview-window=right:75% --preview 'bat -p --color "always" --paging=never {}'
}

# fh - repeat history
runcmd (){ perl -e 'ioctl STDOUT, 0x5412, $_ for split //, <>' ; }

fh() {
  ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed -re 's/^\s*[0-9]+\s*//' | runcmd
}

# fhe - repeat history edit
writecmd (){ perl -e 'ioctl STDOUT, 0x5412, $_ for split //, do{ chomp($_ = <>); $_ }' ; }

fhe() {
  ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed -re 's/^\s*[0-9]+\s*//' | writecmd
}

    fi  

    if [ "x$pid" != "x" ]
    then
        echo $pid | xargs kill -${1:-9}
    fi  
}

# fkill - kill processes - list only the ones you can kill. Modified the earlier script.
fkill() {
    local pid 
    if [ "$UID" != "0" ]; then
        pid=$(ps -f -u $UID | sed 1d | fzf -m | awk '{print $2}')
    else
        pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')
    fi  

    if [ "x$pid" != "x" ]
    then
        echo $pid | xargs kill -${1:-9}
    fi  
}
