HISTCONTROL=ignoredups:ignorespace
alias ls='ls --color=auto'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

if [ -f ~/.customization/git-completion.bash ]; then
    . ~/.customization/git-completion.bash
fi

PATH="${PATH}:/home/evan/scripts:"
export PATH

#Modifies the prompt
green=$(tput setaf 2)
reset=$(tput sgr0)

alias lifx='/Users/ethomas/.customization/scripts/lifx-cmd/venv/bin/python /Users/ethomas/.customization/scripts/lifx-cmd/bin/lifx'
alias lifx-discover='/Users/ethomas/.customization/scripts/lifx-cmd/venv/bin/python /Users/ethomas/.customization/scripts/lifx-cmd/bin/lifx-discover'

#adds mark jump command to terminal
source ~/.marksrc


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
source ~/.customization/secrets


if [ -z "$TMUX" ]; then
  tmux
fi
