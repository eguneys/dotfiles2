
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[34m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "


alias ll="ls -alrtF --color"
alias la="ls -A"
alias dir="ls --color=auto --format vertical"
alias du="du -ch --max-depth=1"

alias e='emacsclient -t'

source ~/.bashrc_custom

source ~/.ghcup/env
