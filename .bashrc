#!/bin/python
export PYTHONPATH=$HOME/workspace/science/libraries/python/kad
alias lovebot="python ~/Documents/love_bot/lovebot.py"
alias ls="ls -GFh"
alias sl='ls -la'

alias vimruntime="cd ~/.vim_runtime && ls"
alias desktop="cd ~/Desktop && ls"
alias downloads="cd ~/Downloads && ls"
# to help with making git better
alias gitupdate="git status && git pull && git push && git status"
alias pim="ipython qtconsole & vim"

cdd () {
cd $1
ls
}

PS1="**\h:\W**🌀   "
stty stop undef
# add path to git-annex
export PATH=/Applications/git-annex.app/Contents/MacOS:$PATH

######################### Work Realated ##########################################
alias startwork="kad && workon kad-rad && pyenv global 3.4.3 && git status-kad && devpi login nathan"

alias manta="cd ~/workspace/manta && ls"
alias science="cd ~/workspace/science && ls"
alias kad="cd ~/workspace/science/libraries/python/kad && ls"
alias reaktorutils="workon kad-rad && cd ~/workspace/science/libraries/python/kad/kad/reaktor/ && ls"
alias reaktorgrader="workon kad-rad && cd ~/workspace/science/auto_grading/code/calarts_synthesis_reaktor2/reaktor_grader2/ && ls"
alias rgtox="workon kad-rad && cd ~/workspace/science/auto_grading/code/calarts_synthesis_reaktor2 && tox"
alias togit="tox -i "
alias reaktorassignments="workon kad-rad && cd ~/workspace/science/auto_grading/code/calarts_synthesis_reaktor2/tests/data && ls"
alias gandalf_home="ssh nathan@76.170.76.201"
alias gandalf_work="ssh nathan@192.168.1.2"

workon() {
    . $HOME/.virtualenvs/$1/bin/activate
}

# pyenv setup this should be at the end of the file
export PATH=~/.pynev/shims:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
