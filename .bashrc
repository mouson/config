#
alias SYNC="sync; sync; sync"
alias c="clear"
alias cd..="cd .."
alias cd...="cd ../.."
alias cls="clear"
alias d="dir"
alias dir="ls -l"
alias f="finger"
alias g="grep --color=auto --mmap"
alias l="last"
alias lo="logout"
alias ls="ls --color=auto -aF"
alias m="more"
alias md="mkdir"
alias more="most"
alias psa="ps awx"
alias s="screen"
alias ssh="ssh -4 -C -e none"
alias t="telnet"
#
export EDITOR="/usr/bin/vim"
export PAGER="/usr/bin/most"
#
shopt -s checkwinsize
shopt -s histappend
#
if [ -z "$WINDOW" ]; then
    PS1='\[\e[0m\e[32m\]\u\[\e[0m\]@\[\e[36m\]\h\[\e[0m\] [\[\e[32m\]\w\[\e[0m\]] [\[\e[36m\]\A\[\e[0m\]] '
else
    PS1='\[\e[0m\e[32m\]\u\[\e[0m\]@\[\e[36m\]\h\[\e[0m\] [\[\e[32m\]\w\[\e[0m\]] [\[\e[36m\]\A\[\e[0m\]/\[\e[36m\]W$WINDOW\[\e[0m\]] '
fi
