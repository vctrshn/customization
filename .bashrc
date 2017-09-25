HISTCONTROL=ignoredups:ignorespace
alias ls='ls --color=auto'
alias vim='vim -p'
alias sl='ls'

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias ack='ack-grep --ackrc=/home/evan/.ackrc'
alias sr='screen -X eval "chdir $PWD"'
alias open='gnome-open'
alias dim='lifx rgb .1 .1 .1'
alias bright='lifx rgb 1 1 1 '

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

if [ -f ~/.name ]; then
  name=$(cat ~/.name)
else
  name=$(echo '')
fi

#Modifies the prompt
green=$(tput setaf 2)
reset=$(tput sgr0)

# PS1='\[\033k\033\\\]\[$green\][$name\w]\$\[$reset\] ' #the \[\033k\033\\\] is some hack that screen uses to display the title
PS1='\[$green\][$name\w]\$\[$reset\] ' #the \[\033k\033\\\] is some hack that screen uses to display the title

# add my own scripts folder to path after everything else
PATH="/home/evan/.local/bin:/home/evan/.cabal/bin:${PATH}:/home/evan/scripts:/home/evan/scripts/git:${ANT_HOME}/bin:${JAVA_HOME}"
export PATH

#adds mark jump command to terminal
source ~/.marksrc


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""


alias lifx=/home/evan/lifx/lifx-cmd/venv/bin/lifx
