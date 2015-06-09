#! /bin/bash
SESSION_NAME=left_screen

sudo -i

tmux -2 new-session -d -s $SESSION_NAME

## Window 0 is for bash


## Window 1 if for firefox
tmux new-window -t $SESSION_NAME:1 -n 'firefox'
tmux send-keys "docker start firefox" C-m "docker attach firefox" C-m


## Window 2 is for dl sofwares
tmux new-window -t $SESSION_NAME:2 -n 'dl'
tmux send-keys "docker start jd2" C-m "docker attach jd2" C-m


## Window 3 is for dl sofwares
tmux new-window -t $SESSION_NAME:3 -n 'comm'
tmux send-keys "docker start mutt" C-m

tmux split-window -h
tmux select-pane -t 0
tmux split-window -v
tmux send-keys "todo ls" C-m

tmux select-pane -t 2
#tmux send-keys C-t
tmux split-window -v

# Resize pane for clock
tmux select-pane -t 2
tmux resize-pane -U 22

tmux select-pane -t 3
tmux send-keys "docker run -ti --rm francois/w3m:0.1 http://media.commandline.org.uk/code/mutt.txt" C-m
tmux split-window -v
tmux send-keys "todo help" C-m


## Window 4 is for irc
tmux new-window -t $SESSION_NAME:4 -n 'irc'
#tmux send-keys "docker start irssi" C-m

## Window  5 for twitter
tmux new-window -t $SESSION_NAME:5 -n 'twitter'
tmux send-keys "todo ls" C-m
tmux split-window -h
tmux send-keys "docker run -ti --rm francois/w3m:0.1 http://rainbowstream.readthedocs.org/en/latest/#usage" C-m
