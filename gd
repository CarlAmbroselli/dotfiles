#!/bin/sh
# git diff --color "$@" | diff-so-fancy | less --tabs=4 -RFX
git diff --color "$@"
