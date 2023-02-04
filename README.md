## Install tmux
```
brew install tmux

### Custom tmux config github link
https://github.com/gpakosz/.tmux

### Apply config
tmux source-file /absolute/path/to/your/.tmux.conf

### Config tmux status like powerline
Edit the ~/.tmux.conf.local
tmux_conf_theme_left_separator_main='\uE0B0'
tmux_conf_theme_left_separator_sub='\uE0B1'
tmux_conf_theme_right_separator_main='\uE0B2'
tmux_conf_theme_right_separator_sub='\uE0B3'
```

```
### Setting for coppy mode in tmux as vi and copy tmux buffer to system clipboard
Link: squidarth.com/programming/2018/12/14/tmux-linux.html

Adding to ~/.tmux.conf
# Using tmux as vi in copy-mode
set-window-option -g mode-keys vi
set -g status-keys vi

# Copy tmux buffer to clipboard
# For binding 'y' to copy and exiting selection mode
bind-key -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -sel clip -i'

# For binding 'Enter' to copy and not leave selection mode
bind-key -T copy-mode-vi Enter send-keys -X copy-pipe 'xclip -sel clip -i' '\;'  send -X clear-selection

```

## Interacing with tmux like nvim
```
bind -n C-h run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-h) || tmux select-pane -L"
bind -n C-j run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-j) || tmux select-pane -D"
bind -n C-k run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-k) || tmux select-pane -U"
bind -n C-l run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-l) || tmux select-pane -R"
bind -n C-\ run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys 'C-\\') || tmux select-pane -l"
```