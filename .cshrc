#       $Id: csh.cshrc,v 1.1.1.1.10.1 1998/09/03 22:14:37 brian Exp $
#
# System-wide .cshrc file for csh(1).


#export PATH=${PATH}:$HOME/gsutil
#export PYTHONPATH=${PYTHONPATH}:$HOME/gsutil/boto

# cornguo's alias
alias df        df -Hi
alias top       top -HISt
alias count     "ls | wc -l | tr -d ' '"
alias b5telnet  luit -encoding big5 telnet

alias cls       clear
alias md        mkdir
alias rd        rmdir
alias rm        rm -iI
alias del       rm
alias deltree   rm -R
alias bye       logout
alias q         logout
alias dir       ls -lA
alias type      cat
alias attrib    chmod
alias edit      ee
alias bye       exit
alias cp        cp -i
alias mv        mv -i
alias ren       mv
alias move      mv
alias vi        vim

alias wh        "whois -h whois.twnic.net.tw"
alias wha       "whois -h whois.apnic.net"
alias whar      "whois -h whois.arin.net"
alias h         history 25
alias j         jobs -l
if (! -e /usr/local/bin/gnuls) then
    alias ls "ls -F --color=auto --show-control-chars"
    alias ll "ls -F --color=auto --show-control-chars -lah"
else
    alias ls "gnuls -F --color=auto --show-control-chars"
    alias ll "gnuls -F --color=auto --show-control-chars -lah"
endif
alias m         more
alias n         nslookup
alias g         grep
alias p         ping
alias less      "/usr/bin/less -EmrSw"
alias more      most
alias telnet    "telnet -8"
alias tmux      "tmux -2"
setenv  EDITOR  vim
setenv  PAGER   more
setenv  BLOCKSIZE       K
setenv  CLICOLOR_FORCE
setenv  LSCOLORS "gxfxcxdxbxefedabagacad"
setenv  LESS "-EmrSw"
setenv  LESSCHARDEF "8bcccbcc18b95.."
setenv  LANG zh_TW.UTF-8
setenv  MM_CHARSET UTF-8
setenv  LC_ALL zh_TW.UTF-8
setenv  LC_CTYPE zh_TW.UTF-8
setenv  LC_MESSAGES zh_TW.UTF-8
set recexact
set autolist
set matchbeep = ambiguous
set autoexpand
set autocorrect
set notify
set correct = all
set symlinks = ignore
set listlinks
set listjobs
set rmstar
set showdots

if ($?prompt) then
        # An interactive shell -- set some stuff up
        set filec
        set history = 10000
        set savehist = 10000
        set mail = (/var/mail/$USER)
endif

# set prompt = "%B%m [%/] -%n- "
set prompt = "%m [%/] "
#
set prompt2 = "(%t %m)%~ #%% "
set prompt3 = "%SDo you mean [%R] (y/n/e) ? "

set nobeep
set dspmbyte="0000000000000000000000000000000000000000000000000000000000000000222222222222222222222222222222222222222222222222222222222222222223333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333330"

if (-e ~/.login.txt && ${TERM} != 'su') then
    cat ~/.login.txt
endif

