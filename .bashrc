HISTCONTROL=ignoredups:ignorespace
alias ls='ls -G'
TERM=xterm-256color

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

PATH="${PATH}:/Users/ethomas/scripts:/Users/ethomas/bin"
export PATH

#adds mark jump command to terminal
source ~/.marksrc


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
source ~/.customization/secrets
export GOPATH=/Users/ethomas/go_home
