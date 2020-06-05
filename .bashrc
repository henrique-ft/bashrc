# git branch helper
rse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon
# tmux
alias tmux="TERM=xterm-256color tmux"
# alias for projects
alias projects="cd ~/Desktop/Projects"
# alias for keyboard configuration
alias keyboard="sudo dpkg-reconfigure keyboard-configuration"

