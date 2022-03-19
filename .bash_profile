if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export VISUAL=vim
export EDITOR="$VISUAL"


export LANG="en_US.utf-8"
export LANGUAGE="en"
export LC_MESSAGES="C"


export PATH=~/.yarn/bin:$PATH
export PATH=~/programs/LOVE:$PATH
. "$HOME/.cargo/env"
