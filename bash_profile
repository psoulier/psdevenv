#!/usr/bin/env bash

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export EMD2=$'\xe2\x94\x80\xe2\x94\x80'
export EMD5=$'\xe2\x94\x81\xe2\x94\x81\xe2\x94\x81\xe2\x94\x81\xe2\x94\x81'
export TLC=$'\xe2\x94\x8f'
export BLC=$'\xe2\x94\x97'
export PROMPT_END=$'\xe2\x9d\xaf'
export PROMPT_GOOD=$'\xe2\x9c\x94'
export PROMPT_BAD=$'\xe2\x9c\x98'
export GRAY="\[\\033[38;5;241m\]"
export LINE="\[\\033[38;5;241m\]"
#####

PROMPT=$'\xE2\x9D\xAF'
ARROW=$'\xEE\x82\xB0'
BRANCH=$'\xEE\x82\xA0'

__prompt_git_branch()
{
    # Add this as a pprefix to the branch name to get the current name of the repo
    # Intended to be useful for identifying submodules
    # basename `git rev-parse --show-toplevel`
    echo -n "$BRANCH "
    if git rev-parse --git-dir >/dev/null 2>&1; then
        git branch 2>/dev/null | grep '^*' | colrm 1 2
    else
        echo -n "--- "
    fi
}

RST="\[\033[0m\]"
FG="\[\033[38;5;"
BG="\[\033[48;5;"
WHITE="231m\]"
BLACK="232m\]"
COLOR_1="171m\]"
COLOR_2="99m\]"
COLOR_3="27m\]"
GOOD=$'\[\xe2\x9c\x94\]'
BAD=$'\[\xe2\x9c\x98\]'

PS1="$FG$WHITE$BG$COLOR_1 \$(if [ \$? = 0 ]; then echo $GOOD; else echo $BAD; fi) $FG$COLOR_1$BG$COLOR_2$ARROW${FG}${WHITE} \w $FG$COLOR_2$BG$COLOR_3$ARROW${FG}${WHITE} \$(__prompt_git_branch) $FG$COLOR_3$BG$BLACK${ARROW}$RST\n$FG$COLOR_1$PROMPT$FG$COLOR_2$PROMPT$FG$COLOR_3$PROMPT$RST "

PLATFORM=`uname`
if [[ $PLATFORM = 'Darwin' ]]; then
    alias grep='ggrep --color=auto'
fi

# 
# Shortcut to search C/C++ source files recursively through directory tree.
#
cg()
{
    grep -nr --color=always --include="*.[ch]pp" --include="*.cc" --include="*.hh" --include="*.[ch]" "$@" | less -r
}


PSDEVENV_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
PATH=$PSDEVENV_DIR/bin:$PATH
export PATH

