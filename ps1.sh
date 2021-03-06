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

PS1="$LINE$EMD2(\`if [ \$? = 0 ]; then echo \[\\033[38\;5\;34m\]$PROMPT_GOOD; else echo \[\\033[38\;5\;160m\]$PROMPT_BAD; fi\`$LINE)$EMD5(\[\\033[38;5;220m\]\w$LINE)$EMD5\n\[\\033[38;5;33m\]$PROMPT_END\\[\\033[0m "

