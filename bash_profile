#!/usr/bin/env bash

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PROMPT_END=$'\xe2\x9d\xaf'
export PROMPT_GOOD=$'\xe2\x9c\x94'
export PROMPT_BAD=$'\xe2\x9c\x98'

PS1=$"\`if [ \$? = 0 ]; then echo \\[\e[36m\\]$PROMPT_GOOD\\[\e[0m\\]; else echo \\[\e[31m\\]$PROMPT_BAD\\[\e[0m\\]; fi\` \W \\[\e[34m\\]$PROMPT_END\\[\e[0m\\] "

PLATFORM=`uname`
if [[ $PLATFORM = 'Darwin' ]]; then
    alias grep='ggrep --color=auto'
fi

# 
# Shortcut to search C/C++ source files recursively through directory tree.
#
cg()
{
    grep -nr --include="*.[ch]pp" --include="*.cc" --include="*.hh" --include="*.[ch]" "$@"
}


PSDEVENV_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
PATH=$PSDEVENV_DIR/bin:$PATH
export PATH

