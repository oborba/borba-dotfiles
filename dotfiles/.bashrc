# Tmux color setup
[ -z "$TMUX" ] && export TERM=xterm-256color

# Set default editor
export EDITOR=vim


# Enable tab complete commands
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Get the git branch name
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Set terminal display without machine name and if has should show git branch
PS1="${debian_chroot:+($debian_chroot)}\w\$(parse_git_branch)$ "

