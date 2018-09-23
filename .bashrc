#  ================================= SOURCE  =================================
[ -f ~/.customization/git-completion.bash ] && source ~/.customization/git-completion.bash
[ -f ~/.marksrc ]                           && source ~/.marksrc
[ -f ~/.fzf.bash ]                          && source ~/.fzf.bash
[ -f ~/.customization/secrets ]             && source ~/.customization/secrets


#  ================================= EXPORTS =================================
export HISTCONTROL=ignoredups:ignorespace
export TERM=xterm-256color
export PYENV_ROOT="$HOME/.pyenv"
export PGDATA="/usr/local/var/postgres"
export GOPATH=/Users/ethomas/go
export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""


#  ============================== PATH CHANGES ==============================
PATH="$PYENV_ROOT/bin:${PATH}"
PATH="${PATH}:/Users/ethomas/scripts:/Users/ethomas/bin" # mostly for ack
PATH="${PATH}:/Users/ethomas/go/bin"
PATH="${PATH}:/Users/ethomas/.local/bin" # for haskell stuff
PATH="${PATH}:/usr/local/sbin"
export PATH


#  ================================= ALIASES =================================
alias lifx='/Users/ethomas/.customization/scripts/lifx-cmd/venv/bin/python /Users/ethomas/.customization/scripts/lifx-cmd/bin/lifx'
alias lifx-discover='/Users/ethomas/.customization/scripts/lifx-cmd/venv/bin/python /Users/ethomas/.customization/scripts/lifx-cmd/bin/lifx-discover'
alias ls='ls -G'
alias nose='nosetests -v -x -s'


#  ================================= OTHER =================================
if [ -z "$TMUX" ]; then
  tmux
fi


# from casey
if [[ "$(whoami)" == "ethomas" ]] && ! ps -U "ethomas" -o pid,ucomm | grep -v grep | grep -q "ssh-agent"; then
    eval "$(ssh-agent)"
    ssh-add > /dev/null 2>&1
fi
