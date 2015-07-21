# Tmux color setup
[ -z "$TMUX" ] && export TERM=xterm-256color

# Set default editor
export EDITOR=vim

# Show git branch name
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$(parse_git_branch) $ "

