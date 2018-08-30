HISTCONTROL=ignoredups:ignorespace
alias ls='ls -G'
TERM=xterm-256color

if [ -f ~/.customization/git-completion.bash ]; then
    . ~/.customization/git-completion.bash
fi

PATH="/usr/local/opt/gnu-sed/libexec/gnubin:${PATH}" # gnu sed instead of bsd sed
PATH="${PATH}:/Users/ethomas/scripts:/Users/ethomas/bin"
PATH="${PATH}:/Users/ethomas/scripts/cancel-cr-build"
PATH="${PATH}:/Users/ethomas/go/bin"
PATH="${PATH}:/Users/ethomas/.local/bin"
PATH="${PATH}:/usr/local/sbin"
PATH="${PATH}:/Users/ethomas/git.dev.box.net/ethomas/pe-oncall-tools"


export PATH

alias lifx='/Users/ethomas/.customization/scripts/lifx-cmd/venv/bin/python /Users/ethomas/.customization/scripts/lifx-cmd/bin/lifx'
alias lifx-discover='/Users/ethomas/.customization/scripts/lifx-cmd/venv/bin/python /Users/ethomas/.customization/scripts/lifx-cmd/bin/lifx-discover'

# eval $(thefuck --alias)  # https://github.com/nvbn/thefuck

#adds mark jump command to terminal
source ~/.marksrc


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
source ~/.customization/secrets
export GOPATH=/Users/ethomas/go

alias nose='nosetests -v -x -s'
export PYTHONPATH=$PYTHONPATH:/Users/ethomas/git.dev.box.net/Productivity/werk
alias dwerk='/Users/ethomas/git.dev.box.net/Productivity/werk/venv/bin/python /Users/ethomas/git.dev.box.net/Productivity/werk/werk/main.py'

if [ -z "$TMUX" ]; then
  tmux
fi


# from casey
if [[ "$(whoami)" == "ethomas" ]] && ! ps -U "ethomas" -o pid,ucomm | grep -v grep | grep -q "ssh-agent"; then
    eval "$(ssh-agent)"
    ssh-add > /dev/null 2>&1
fi

# kube commands
# deployment-config scripts/kube-up.sh
# docker-machine start
# eval $(docker-machine env)

alias stop_work='sudo launchctl unload /Library/LaunchDaemons/com.opendns.osx.RoamingClientConfigUpdater.plist'
alias start_work='sudo launchctl load /Library/LaunchDaemons/com.opendns.osx.RoamingClientConfigUpdater.plist'
alias dms='docker-machine start secondary'
alias dme='eval $(docker-machine env secondary)'
export JENKINS_URL=https://jenkins.pod.box.net
