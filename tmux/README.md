## Setup
https://www.josean.com/posts/tmux-setup

- Install plugin C-a + Shift + i

- Link file config command:
ln -s -f github/dotfiles/tmux/.tmux.conf

## Tmux documentation
- Create new tmux session
tmux new -s SESSION_NAME

- Exit session
tmux detach

- List tmux session
tmux ls

- Attach specific tmux session
tmux attach -t SESSION_NAME

C-a c  -  Create new tmux window
C-a NUMBER   -    Open specific tmux window
C-a ,    -   Rename window

C-a n  /  C-a p  -  Circle through tmux window

C-a s  -  Show all sessions
C-a w  -  Show all windows

C-a m   -  Minimize other panes


- Moving on terminal
C-a [
Exit C-c