# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export PS4='+(${BASH_SOURCE}:${LINENO}): ${FUNCNAME[0]:+${FUNCNAME[0]}(): }'

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTFILESIZE=4000000000
HISTSIZE=10000
export HISTIGNORE="ls:cd:top:l:la:ll:"

# append to the history file, don't overwrite it
shopt -s histappend

# Make regular (daily) backups of the history:
#export HISTFILE=~/.history/`date +%Y%m%d`.hist
#export HISTSIZE=100000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -h --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alFh'
alias la='ls -Ah'
alias l='ls -CFh'
alias rm='rm -rv'
alias mv='mv -v'
alias cp='cp -rv'
alias open='xdg-open'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Extract any file extension
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

#copy and go to dir
cpg (){
  if [ -d "$2" ];then
    cp $1 $2 && cd $2
  else
    cp $1 $2
  fi
}

#move and go to dir
mvg (){
  if [ -d "$2" ];then
    mv $1 $2 && cd $2
  else
    mv $1 $2
  fi
}

#Copy and paste contents of file to a clipboard from command line
#alias pbcopy=`xsel --clipboard --input`
#alias pbpaste=`xsel --clipboard --output`


# Directory navigation aliases
alias 2up='cd ../..'
alias 3up='cd ../../..'
alias 4up='cd ../../../..'


# History search
past (){
   echo "Searching the history for "$1"."
    history | grep $1
}
# Folder size
dush (){
   echo "The size of "$1" is:"
   du -sh $1
}


# More aliases:

alias process='ps -u wms_joe'
alias today='(date +'%d%m%Y')'

# Aliases for hhblits environment (wont be needed once centrally installed)

export HHLIB=/home/wms_joe/Applications/HHSuite/lib/hh
PATH=$PATH:/home/wms_joe/Applications/HHSuite/bin/:$HHLIB/scripts
alias hhblits='/home/wms_joe/Applications/HHSuite/bin/hhblits -d /home/wms_joe/Applications/HHSuite/databases/pdb70/pdb70'

# Add chimera directory for pychimera to access
export CHIMERADIR='/home/wms_joe/Applications/CHIMERAHL1.11/'

PATH=$PATH:/home/wms_joe/Programs/

export iterm2_hostname=DMI
test -e "${HOME}/.iterm2_shell_integration.tcsh" && source "${HOME}/.iterm2_shell_integration.tcsh"

export PYTHONSTARTUP=~/.pythonrc

# added by Miniconda2 4.1.11 installer
export PATH="/home/wms_joe/bin/miniconda2/bin:$PATH"
export PATH=$PATH:/home/wms_joe/bin/atom-1.10.2-amd64/
export PATH=$PATH:/home/wms_joe/bin/bioinfo-tools/
export PATH=$PATH:/home/wms_joe/bin/bioinfx/

# Function to return the local machine IP for scp etc.
client (){
echo $SSH_CLIENT | awk '{ print $1}'
}
