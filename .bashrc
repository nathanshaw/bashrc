#!/bin/python
alias ls="ls -GFh"
alias sl='ls -la'
alias ll='ls -la'
alias l.='ls -d .* --color=auto'
alias vimrc="vim ~/.custom_vimrc/vimrc.vim"
alias desktop="cd ~/Desktop && ls"
alias downloads="cd ~/Downloads && ls"

# to help with making git better
alias gitupdate="git status && git pull && git push && git status"
alias pim="ipython qtconsole & vim"
alias bashrc="vim ~/.custombashrc/.bashrc"
alias brc="vim ~/.custombashrc/.bashrc"
alias sbashrc="source ~/.custombashrc/.bashrc"
alias sbrc="source ~/.custombashrc/.bashrc"
alias bashprofile="vim ~/.bash_profile"
alias bpf="vim ~/.bash_profile"
# this is to ensure that vim colorschemes appear inside of tmux
alias tmux="TERM=screen-256color-bce tmux"
alias v="vim -p"
alias c="clear"
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# Arduino 
export ARDUINO_DIR="/Applications/Arduino.app/Contents/Java"
export ARDMK_DIR="/usr/local"
export AVR_TOOLS_DIR="/usr"

# this allows me to press <ctrl> S to send lines of code from vim into ipythonkk
stty -ixon

############################## iTerm2 ############################################
source ~/.iterm2_shell_integration.`basename $SHELL`

############################## Navigation to Projects ############################
alias snes="cd ~/Documents/SNES_Circuit_Bending/ && git status && ls"
alias snappers="cd ~/Documents/SnapperBot/ && git status && ls"

cdd () {
cd $1
ls
}

stty stop undef

# add path to git-annex
export PATH=/Applications/git-annex.app/Contents/MacOS:$PATH

workon() {
    . $HOME/.virtualenvs/$1/bin/activate
}

############## Command Prompts ##################################

export VIRTUAL_ENV_DISABLE_PROMPT=1

# get the name and hash of current git repo
#function git_prompt() { echo -e $(vcprompt --format="\033[36m%b\033[m \033[34m%r\033[m \033[31;1m%m%a%u\033[m ") ;}

# to to display python venv version
pyenv_python_version(){
    result=""
    if hash pyenv 2>/dev/null; then
        pyenv_version="$(pyenv version-name)";
        if [ -n "$pyenv_version" ]; then
            result="$pyenv_version";
        fi
    fi
    [[ -n "$result" ]] && echo "($result) "
}

robots() {
    SERVICE='chuck'

    if ps ax | grep -v grep | grep $SERVICE > /dev/null
    then
        echo "$SERVICE killing running chuck programs"
        killall chuck
    fi

    chuck ~/workspace/nathans_robots/serial-robot-server/master.ck --port:8888 &
    chuck ~/workspace/nathans_robots/midi-robot-server/master.ck --port:8889
}

masters(){

    SERVICE='chuck'

    if ps ax | grep -v grep | grep $SERVICE > /dev/null
    then
        echo "$SERVICE killing running chuck programs"
        killall chuck
    fi

    chuck ~/workspace/nathans_robots/serial-robot-server/master.ck --port:8888 &
    chuck ~/workspace/nathans_robots/midi-robot-server/master.ck --port:8889
    wait 5
    chuck ~/Desktop/No_Humans_Allowed/masters_show/masters_show_main.ck --port: 9990

}

GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh
export PS1="\[\033[38;5;44m\][\t]\[\033[31m\]\[\033[38;5;194m\]\w\[\033[38;5;166m\] 💎  \[\033[38;5;195m\]"

##################################################################

function export_json(){
    python ~/.json_export.py $1
}

eval "$(pyenv init -)"

