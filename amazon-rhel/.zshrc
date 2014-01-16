source /apollo/env/envImprovement/var/zshrc
export PATH="$PATH:/apollo/env/eclipse-4.2/bin"
#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors

# For oracle
db_connect() { 
    export ORACLE_VERSION=10.2.0.2
    export ORACLE_HOME=/opt/app/oracle/product/${ORACLE_VERSION}/client
    export PATH=$ORACLE_HOME/bin:$PATH
    rlwrap sqlplus $* 
} 

# Aliases
alias bb="brazil-build"
alias bbr="brazil-recursive-cmd 'echo \"@@@ Building $name\" && brazil-build'"
alias eclipsed="eclipse > /dev/null 2>&1 &"
alias p4cs="p4 changes -u davidcgl -m 10" 
alias sqlplus=db_connect
alias sshsql="ssh browse-command-line-na-5001.iad5"

# More exports
export EDITOR=vim
export P4EDITOR=vim

# Use the Solarized Color Scheme
# Set console colors to Solarized Colors by overriding the defaults (note that these are the dark Solarized colors)
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_colors" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/palette" --type string "#073642:#DC322F:#859900:#B58900:#268BD2:#D33682:#2AA198:#EEE8D5:#002B36:#CB4B16:#586E75:#657B83:#839496:#6C71C4:#93A1A1:#FDF6E3"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_color" --type string "#002B36"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/foreground_color" --type string "#657B83"
 
# Change dircolors to work better with the Solarized colorscheme
eval `dircolors ~/.dir_colors/dircolors.ansi-universal`
 
# Fix Prompt (Gnome Terminal assumes that bold == bright, which is not the case with Solarized)
# PS1="%{$fg[blue]%}%n%{$fg[cyan]%}@%{$fg[blue]%}%m%{$fg[yellow]%}> %{$fg[default]%}"
# RPROMPT="%{$fg[magenta]%}%(7~,.../,)%6~%{$fg[default]%}"

