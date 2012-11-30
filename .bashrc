# .bashrc
export PATH=/software/private/gfilion/bin:$PATH
export ROOT=/software/private/gfilion
export PYTHONPATH=$ROOT/lib/python:$PYTHONPATH
export R_ENVIRON=$ROOT/lib/R/etc/Renviron.site
export NLTK_DATA=$ROOT/usr/share/nltk_data
export BLASTDB=/software/private/gfilion/seq/blastdb/

# Safety aliases.
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -lh --color=auto'
#alias lhid='ls -a | egrep "^\."'
alias l.='ls -d .* --color=auto'
alias ld='ll -d */'


# nohup aliases and shell functions (for launching in terminal).
function chrome() {
   google-chrome --enable-plugins --no-sandbox > /dev/null 2>&1 &
   disown -h
}
function gedit() { nohup gedit "$@" > /dev/null 2>&1 & }

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#virtualenv wrapper
#store in the dropbox folder
#export WORKON_HOME=$HOME/Dropbox/.virtualenvs
#source ~/.local/bin/virtualenvwrapper.sh
