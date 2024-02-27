#!/bin/bash

alias gs='git status'
alias gl='git log'
alias gp='git push'
alias gpp='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias gt='git remote -vv'
alias gb='git branch -vv'
alias dotcommit="git add . && git commit -m ."