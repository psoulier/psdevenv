
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PROMPT_END=$'\xe2\x9d\xaf'
export PROMPT_GOOD=$'\xe2\x9c\x94'
export PROMPT_BAD=$'\xe2\x9c\x98'

PS1=$"\`if [ \$? = 0 ]; then echo \[\e[36m\]$PROMPT_GOOD\[\e[0m\]; else echo \[\e[31m\]$PROMPT_BAD\[\e[0m\]; fi\` \W \[\e[34m\]$PROMPT_END\e[0m\] "


PSDEVENV_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

PATH=$PSDEVENV_DIR/bin:$PATH
export PATH

