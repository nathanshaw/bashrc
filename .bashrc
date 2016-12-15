#!/bin/python

export PYTHONPATH=$HOME/workspace/science/libraries/python/kad
alias lovebot="python ~/Documents/love_bot/lovebot.py"
alias ls="ls -GFh"
alias sl='ls -la'
alias vimrc="vim ~/.custom_vimrc/vimrc.vim"
alias desktop="cd ~/Desktop && ls"
alias downloads="cd ~/Downloads && ls"

# to help with making git better
alias gitupdate="git status && git pull && git push && git status"
alias pim="ipython qtconsole & vim"
alias bashrc="vim ~/.custombashrc/.bashrc"

# vim stuff
alias vim="/usr/local/Cellar/vim/7.4.1830/bin/vim"

# this allows me to press <ctrl> S to send lines of code from vim into ipython
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

######################### Work Realated ##########################################

alias startwork="kad && workon kad-rad && pyenv global 3.4.3 && git status-kad && devp ilogin nathan"
alias comics="workon kad-rad && cd ~/workspace/science/research/comics && git status"
alias manta="cd ~/workspace/manta && source ~/workspace/manta/flask/flask/bin/activate && git status"
alias science="cd ~/workspace/science && ls"
alias kad="cd ~/workspace/science/libraries/python/kad && workon kad-rad && ls"
alias reaktorutils="workon kad-rad && cd ~/workspace/science/libraries/python/kad/kad/reaktor/ && ls"
alias reaktorgrader="workon kad-rad && cd ~/workspace/science/auto_grading/code/calarts_synthesis_reaktor2 && ls"
alias autograde="workon kad-rad && cd
~/workspace/science/auto_grading && ls"
alias reaktorcrit="workon kad-rad && cd ~/workspace/science/auto_grading/code/calarts_synthesis_reaktor2/reaktor_grader2/media/criteria && ls"
alias max="workon kad-rad && cd ~/workspace/science/auto_grading/code/max_msp_grader && ls"
alias p5js="workon kad-rad && cd /Users/nathan/workspace/science/auto_grading/ensemble/p5js_code_grader/p5js_code_grader && ls"
alias pfjs="workon kad-rad && cd /Users/nathan/workspace/science/auto_grading/ensemble/p5js_code_grader/p5js_code_grader && ls"
alias rgtox="workon kad-rad && cd ~/workspace/science/auto_grading/code/calarts_synthesis_reaktor2 && tox"
alias toxitt="make clean && tox -e verbose ALL=http://devpi.kadenze.com/nathan/dev/+simple/ &&
    make clean && rm -r .cache/"
alias toxit="make clean && tox -e verbose"
alias wks="cd ~/workspace && ls"
alias gandalf_home="ssh nathan@76.170.76.201"
alias gandalf_work="ssh nathan@192.168.1.2"
alias computermusic="cd ~/workspace/computer_music && git status && ls -la"
alias website="cd ~/workspace/nathanshaw.github.io && ls"

############### Not Work ###########################
alias ios="cd ~/workspace/ios_dev/active_projects/BiTDEPH\ Synthesizer && git status && ls -la"

alias toxmax="workon kad-rad && cd ~/workspace/science/research/max_msp/max_msp_grader && ls && git checkout tests/. && tox -e verbose"
alias website="cd ~/workspace/nathanshaw.github.io && ls"

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
    chuck ~/Desktop/No_Humans_Allowed/masters_show/masters_show_main.ck 

}

# this was one I downloaded
# this was my old one
# PS1="**\h:\W**🌀   "

#export PS1=" \[\033[33;1m\]\$(pyenv_python_version)\[\033[36;1m\]*\W\* 🌀  \[\033[39;1m\]"
export PS1=" \[\033[33;1m\]\$(pyenv_python_version)\[\033[36;1m\]*\W\*🌀  \[\033[0;37m\]"

##################################################################

function export_json(){
    python ~/.json_export.py $1
}

eval "$(pyenv init -)"

# this is to ensure that vim colorschemes appear inside of tmux
alias tmux="TERM=screen-256color-bce tmux"
