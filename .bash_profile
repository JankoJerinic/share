##------------- Setting Paths ---------------##
# added by Anaconda2 2.4.1 installer
export PATH="/apollo/env/SDETools/bin:$PATH"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Vim 7.4
export PATH="/usr/local/Cellar/vim/7.4.1468/bin:$PATH"
export PATH="~/bin:$PATH"

##-------------------------------------------##

export P4CONFIG=.p4config
export P4EDITOR=vim
export EDITOR=vim
export PS1="\u@\H:\w$"

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1
# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color
# Colorful LS
alias ls="ls -G"
alias bb="brazil-build"

DEVDESKTOP_HOST="dev-dsk-jerinicj-2b-860af36e.us-west-2.amazon.com"
DEVDESKTOP_HOST_CNAME="jerinicj.aka.corp.amazon.com"

ODIN_HOST="jerinicj-1.desktop.amazon.com"
SOCK_FILE="/tmp/ssh-socket-2009-$ODIN_HOST"
start_odin () {
    ssh -L 2009:localhost:2009 $ODIN_HOST -N -f -T -M -S $SOCK_FILE -o ExitOnForwardFailure=yes
}

stop_odin () {
    ssh -S $SOCK_FILE -O exit $ODIN_HOST
}

#alias sshdev="ssh -o ProxyCommand=none $DEVDESKTOP_HOST"
#alias sshdevx="ssh -X -o ProxyCommand=none $DEVDESKTOP_HOST"
alias sshdev="ssh $DEVDESKTOP_HOST_CNAME"
alias sshdevx="ssh -X $DEVDESKTOP_HOST_CNAME"

# added by Anaconda2 4.1.1 installer
export PATH="/Users/jerinicj/anaconda2/bin:$PATH"

