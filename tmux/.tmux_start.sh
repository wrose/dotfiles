#!/bin/sh 
export PATH=$PATH:/usr/local/bin

# abort if we're already inside a TMUX session
[ "$TMUX" == "" ] || exit 0 

# startup a "default" session if none currently exists
TERM=screen-256color-bce tmux -2 has-session -t _default || TERM=screen-256color-bce tmux -2 new-session -s _default -d

# present menu for user to choose which workspace to open
PS3="Please choose your session: "
options=($(tmux list-sessions -F "#S") "NEW SESSION" "FISH" "BASH")
echo "Available sessions"
echo "------------------"
echo " "
select opt in "${options[@]}"
do
    case $opt in
        "NEW SESSION")
            read -p "Enter new session name: " SESSION_NAME
            tmux new -s "$SESSION_NAME"
            break
            ;;
        "FISH")
			      /usr/local/bin/fish --login
            break;;
        "BASH")
            /usr/local/bin/bash --login
            break;;
        *) 
            tmux attach-session -t $opt 
            break
            ;; 
    esac
done    
