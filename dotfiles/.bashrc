# Tmux color setup
[ -z "$TMUX" ] && export TERM=xterm-256color

# Set default editor
export EDITOR=vim

# Enable tab complete commands
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Set terminal display without machine name
# Show git branch name and a * when directory have changes
export GIT_PS1_SHOWDIRTYSTATE=1
PS1="${debian_chroot:+($debian_chroot)}\w\$(__git_ps1)$ "

# Color in ls output
alias ls='ls --color=auto'

# Color in grep match
alias grep='grep --color=always'

source ~/.bundle_scripts
