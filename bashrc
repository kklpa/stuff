parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
 PS1="\[\033[38;5;75m\]\u\[$(tput sgr0)\]\[\033[38;5;243m\]@\[$(tput sgr0)\]\[\033[38;5;214m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;87m\]\[\033[48;5;18m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\[\033[48;5;-1m\]\[$(tput sgr0)\] \033[38;5;214m\]\$(parse_git_branch)\[\033[00m\] \]\]"

# You may uncomment the following lines if you want `ls' to be colorized:
 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"
 force_color_prompt=yes
 alias ls='ls $LS_OPTIONS'
 alias ll='ls $LS_OPTIONS -l'
 alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
 #alias rm='rm -i'
 alias cp='cp -i'
 alias mv='mv -i'
