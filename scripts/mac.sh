#!/bin/zsh

# Remove Emoji & Symbols shortcut key (ctrl-cmd-space)
defaults write -g NSUserKeyEquivalents -dict-add 'Emoji & Symbols' '\0'
