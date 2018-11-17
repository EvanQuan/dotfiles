
. /etc/bashrc

System=`uname`

# Vi
command -v vim >/dev/null 2>&1
if [ $? -eq 0 ] ; then
    alias vi=vim
    alias v=vim
fi

# Xterm
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

# Prompt
if [ "$PS1" ]; then
    PS1='\u@\h:\w$ '
fi

alias la='ls -a'

# Some tmux-related shell aliases

# Attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'

# Attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'

# Creates a new session
alias tn='tmux new-session'

# Lists all ongoing sessions
alias tl='tmux list-sessions'
