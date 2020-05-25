rse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

alias tmux="TERM=xterm-256color tmux"
alias projects="cd ~/Desktop/Projects"
alias keyboard="sudo dpkg-reconfigure keyboard-configuration"
alias ggpush="git add --all && git commit . -m 'updates' && git push"

