#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export HISTTIMEFORMAT="%Y/%m/%d %T "

if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
	shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=''
	exec fish $LOGIN_OPTION
fi

# 从fish shell中启动bash就会执行下面的命令
function __check_command() {
    if ! command -v "$1" &> /dev/null
    then
        return 1
    fi
}

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias sudo='sudo '
alias sc='systemctl'
alias reload='exec bash'
alias vim='nvim'

if __check_command lsd
then
    alias ls='lsd'
    alias ll='lsd -lh'
    alias la='lsd -Alh'
    alias tree='lsd -A --tree'
else
    alias ls='ls --color=auto'
    alias ll='ls -lh'
    alias la='ls -Alh'
    alias tree='tree -aC'
fi

__check_command bat && alias cat='bat'

if [[ "$TERM" == "xterm-kitty" ]]
then
    alias clear="printf '\033[2J\033[3J\033[1;1H'"
fi

unset -f __check_command
