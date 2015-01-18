# aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# automatically resume disconnected tmux session
if [ "$TERM" != "screen-256color" ]; then
  tmux attach
fi

# PS1
export PS1='\h:\w\$ '
# export PS1='\u:\w\$ '
# export PS1='\u@\h:\w\$ '

# default editor
export EDITOR=vim
export VISUAL=vim

# vim mode in terminal
set -o vi

# git plugins
if [ -f ~/.git_plugins/git-completion.bash ]; then
  . ~/.git_plugins/git-completion.bash
fi