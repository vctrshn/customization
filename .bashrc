HISTCONTROL=ignoredups:ignorespace
alias ls='ls -G'
TERM=xterm-256color

if [ -f ~/.customization/git-completion.bash ]; then
    . ~/.customization/git-completion.bash
fi

PATH="${PATH}:/Users/ethomas/scripts:/Users/ethomas/bin"
PATH="${PATH}:/Users/ethomas/scripts/cancel-cr-build"
PATH="${PATH}:/Users/ethomas/go/bin"
export PATH

#adds mark jump command to terminal
source ~/.marksrc


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
source ~/.customization/secrets
# export GOPATH=/Users/ethomas/go

alias nose='nosetests -v -x -s'
export PYTHONPATH=$PYTHONPATH:/Users/ethomas/werk
alias dwerk='/Users/ethomas/werk/venv/bin/python /Users/ethomas/werk/werk/main.py'
