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
#    export LD_LIBRARY_PATH=$ORACLE_HOME/lib:$LD_LIBRARY_PATH
    rlwrap sqlplus $* 
}

# Aliases
alias bb="brazil-build"
alias sqlplus=db_connect
alias eclipsed="eclipse > /dev/null 2>&1 &"

# More exports
export EDITOR=vim
export P4EDITOR=vim
