PS1_DEBIAN_CHROOT='${debian_chroot:+($debian_chroot)}'
PS1_TIME='\033[01;31m\]\t \033[01;32m\]'
PS1_USERNAME='\[\e[1;36m\]\u\e[1;37m\]@\e[1;32m\]\h\[\033[00m\]'
PS1_LOCATION='\[\033[01;34m\]\w\[\033[00m\]'
parse_git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
PS1_GIT=' \[\033[00;33m\]$(parse_git_branch)\[\033[00m\]\]'

PS1=$PS1_DEBIAN_CHROOT$PS1_TIME$PS1_USERNAME':'$PS1_LOCATION$PS1_GIT'\n\$ '
PS2='\[\033[01;36m\]>'

export EDITOR=nano

alias rsync="rsync --partial --verbose --progress"
alias lat="ls -latrh"
alias ls="ls --color=auto"
alias grep="grep --color=auto"

export MYSQL_PS1="mariadb://\u@\h:/\d - \R:\m:\s > "
export GREP_COLOR="mt=01;33:ms=01;31:mc=01;32:sl=:cx=:fn=35:ln=32:bn=32:se=36"
export GREP_COLORS="${GREP_COLOR}"

if [ -r "${HOME}/.bashrc.local" ]; then
	source "${HOME}/.bashrc.local"
fi
