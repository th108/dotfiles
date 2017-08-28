# Unbind all
unbind-key -a

# Change the prefix from 'C-b' to 'C-a'
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# Easy config reload
bind-key r source-file ~/.tmux.conf \; display-message "tmux.conf reloaded."

# Enable mouse mode (tmux 2.1 and above)
set -g mouse on
 
# Don't rename windows automatically
set-option -g allow-rename off

# Automatically set window title
#set-window-option -g automatic-rename on
#set-option -g set-titles on

# Start with window 1 (instead of 0)
set -g base-index 1
 
# Start with pane 1 (instead of 0)
set -g pane-base-index 1

# Shorten command delay
set -sg escape-time 1

# Increase the scrollback history limit to make Tmux panes remember more lines
set -g history-limit 10000

# Monitor window activity. Windows with activity are highlighted in the status line
setw -g monitor-activity on
 
# Prevent Tmux from displaying the annoying Activity in window X messages
set -g visual-activity on

#------------------------------------------------
#		BINDS
#------------------------------------------------

# Splitting panes
bind-key s split-window -h
bind-key v split-window -v

# New Window
bind-key c new-window

# Use Alt+arrow keys without prefix key to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Shift+arrow keys to switch windows
bind -n S-Left  previous-window
bind -n S-Right next-window

# Resizing panes with alt+ijkl
bind -n M-k resize-pane -D 2
bind -n M-i resize-pane -U 2
bind -n M-j resize-pane -L 4
bind -n M-l resize-pane -R 4

# Killing panes and windows
bind-key x confirm kill-pane
bind-key q confirm kill-window

# Dettach from tmux
bind-key d detach

# Zoom pane
bind-key z resize-pane -Z

# Scroll page-up, page-down
bind-key PPage copy-mode -u

# Copy+paste
setw -g mode-keys vi
bind Escape copy-mode
bind p paste-buffer
bind-key -t vi-copy 'o' begin-selection
bind-key -t vi-copy 'p' copy-selection

# Help;List all bindings
bind-key / list-keys

# Command-prompt inside tmux
bind-key : command-prompt

#------------------------------------------------
#		STATUS LINE
#------------------------------------------------
#
#http://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf

# panes
set -g pane-border-fg black
set -g pane-active-border-fg brightred

## Status bar design
# status line
set -g status-utf8 on
set -g status-justify centre
set -g status-bg default
set -g status-fg colour12
set -g status-interval 20

# messaging
set -g message-fg black
set -g message-bg yellow
set -g message-command-fg blue
set -g message-command-bg black

#window mode
#setw -g mode-bg colour6
#setw -g mode-fg colour0

# window status
#setw -g window-status-attr reverse

# Info on left (I don't have a session display for now)
set -g status-left ''

# loud or quiet?
set-option -g visual-activity off
set-option -g visual-bell off
set-option -g visual-silence off
set-window-option -g monitor-activity off
set-option -g bell-action none

#set -g default-terminal "xterm-256color"
set -g default-terminal "screen-256color"

# The modes {
#setw -g clock-mode-colour colour135
#setw -g mode-attr bold
#setw -g mode-fg colour196
#setw -g mode-bg colour238

# }
# The panes {

set -g pane-border-bg colour235
set -g pane-border-fg colour238
set -g pane-active-border-bg colour236
set -g pane-active-border-fg colour51


# }
# The statusbar {

set -g status-position top
#set -g status-bg colour234
set -g status-bg colour200
set -g status-fg colour137
set -g status-attr dim
#set -g status-left '#(curl http://ipecho.net/plain)'
#set -g status-left '#[bg=green,fg=black,bold] #(~/status.sh) '
set -g status-left '#[fg=colour11] #(~/.tmux.conf.sh) '
set -g status-right '#[fg=colour11] %a %d %b %Y %H:%M '
set -g status-right-length 35
set -g status-left-length 30


#setw -g window-status-current-fg colour81
setw -g window-status-current-bg colour238
setw -g window-status-current-attr bold
setw -g window-status-current-format ' #I#[fg=colour250]:#[fg=colour255]#W#[fg=colour50]#F '

setw -g window-status-fg colour138
setw -g window-status-bg colour235
setw -g window-status-attr none
setw -g window-status-format ' #I#[fg=colour237]:#[fg=colour250]#W#[fg=colour244]#F '

setw -g window-status-bell-attr bold
setw -g window-status-bell-fg colour255
setw -g window-status-bell-bg colour1

# }
# The messages {

set -g message-attr bold
set -g message-fg colour232
set -g message-bg colour166

# }

##################
# https://github.com/coderholic/config/blob/master/.tmux.conf
##################

# default statusbar colors
#set -g status-fg white
set -g status-bg default

# default window title colors
set-window-option -g window-status-fg white
set-window-option -g window-status-bg default
set-window-option -g window-status-attr dim

# active window title colors
#set-window-option -g window-status-current-fg white
#set-window-option -g window-status-current-bg default
#set-window-option -g window-status-current-attr bright

set-window-option -g window-status-current-format "#[fg=red](#[fg=colour15]#I #W#[fg=red])"
set-window-option -g window-status-format "#[fg=normal]#I #W" 
