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

# When forget sudo
alias fuck='sudo $(history -p \!\!)'

# Set date and hour for each command on history
export HISTTIMEFORMAT="%d/%m/%y %T "

# Share history by all sections (activated when you press the enter)
# Very useful for tmux
shopt -s histappend
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# Ignore duplicate lines
export HISTCONTROL=ignoredups

# Load helper scripts
source ~/.bundle_scripts
