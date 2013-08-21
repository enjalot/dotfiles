
ulimit -n 10000

# MacPorts Installer addition on 2011-08-09_at_12:27:24: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#for locally installed programs (like mvim)
export PATH=/Users/enjalot/code/install:$PATH
#docco
export PATH=/Users/enjalot/code/install/docco/bin:$PATH

#lever cli
export PATH=/Users/enjalot/lever/cli/bin:$PATH

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##alias 'ssh'='~/dotfiles/sshcolor.bash'

alias 'sshe'='ssh enjalot@enja.org'
alias 'sshtrib'='ssh ubuntu@tributary.io -i ~/.ssh/enjalot_tributary.pem'
alias 'sshoa'='ssh ubuntu@107.22.225.160 -i ~/.ssh/enjalot_tributary.pem'
alias 'sshm'='ssh ubuntu@50.16.223.147 -i ~/.ssh/enjalot_tributary.pem'
alias 'sshk'='ssh ubuntu@50.19.108.27 -i .ssh/kijani.pem'

alias 'pss'='python -m SimpleHTTPServer'

alias 'vim'='mvim -v'

alias 'watch'='coffee -wc -o static/js static/coffee'
alias 'watchthis'='coffee -wcb -o . .'

#git aliases
alias glog='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gst='git status'

#lever
alias 'lmongod'='~/lever/downloads/mongodb-osx-x86_64-2.2.1/bin/mongod --dbpath ~/lever/downloads/mongodb-osx-x86_64-2.2.1/data'
alias 'lmongo'='~/lever/downloads/mongodb-osx-x86_64-2.2.1/bin/mongo'
alias 'lmongorestore'='~/lever/downloads/mongodb-osx-x86_64-2.2.1/bin/mongorestore'
alias 'lmongodump'='~/lever/downloads/mongodb-osx-x86_64-2.2.1/bin/mongodump'
#alias 'lsolr'='cd ~/lever/downloads/apache-solr-4.0.0/solr/example/; java -jar start.jar'
alias 'lsolr'='cd ~/lever/downloads/solr-4.2.1/example/; java -jar start.jar'
alias 'lnode'='cd ~/lever/ats;NODE_ENV=development AWS_ACCESS_KEY=AskSomeone AWS_SECRET=AskSomeone node server.js'

alias 'sl'='cd ~/lever/chef-repo;knife ec2 server list'
alias 'lv'='cd ~/lever/cloud/dev;vagrant ssh'
alias 'tailall'="knife search node 'chef_environment:prod AND role:frontend' -i | grep -vE '(^$)|(found$)' | sed s/$/.s.lever.co/ | pssh -iP -t0 -h /dev/stdin sudo tail -fn 100 /var/log/lever/hire.log"
alias 'tailallupload'="knife search node 'chef_environment:prod AND role:frontend' -i | grep -vE '(^$)|(found$)' | sed s/$/.s.lever.co/ | pssh -iP -t0 -h /dev/stdin sudo tail -fn 300 /var/log/lever/upload.log"

alias 'grepallupload'="knife search node 'chef_environment:prod AND role:frontend' -i | grep -vE '(^$)|(found$)' | sed s/$/.s.lever.co/ | pssh -iP -t0 -h /dev/stdin sudo grep -irn '$1' /var/log/lever/upload.log"

#knife ssh -E prod 'role:frontend' grep -irn -C 40 "cdb3768a-5835-4b91-811c-20c1f5157f10" /var/log/lever/upload.log

#ssh related settings
ssh-add ~/.ssh/id_enj_mba
ssh-add ~/.ssh/lever-ec2

#vi editing mode!
set -o vi

preview_latex () {
	latexmk -pvc -view=pdf "$@" #2>&1 > preview_latex.log
}

source ~/.git-completion.bash
source ~/.prompt.bash

#tmux recovery script
alias 'tlever'='tmux-session new lever.node lever.make lever.sovren lever.godbox; tmux attach -t lever'
alias 'ttrib'='tmux-session new tributary.server tributary.watch; tmux attach -t tributary'

# For mouse support (for switching panes and windows)
# Only needed if you are using Terminal.app (iTerm has mouse support)
#Install http://www.culater.net/software/SIMBL/SIMBL.php
#Then install https://bitheap.org/mouseterm/

#mac os x doesn't have cat
alias 'tac'='tail -r'
#loads the script
if [ ! -z "$PS1" ]; then
    _tmuxrc="$HOME/.bashrc.tmux"
    if [ -e $_tmuxrc ]; then
        source $_tmuxrc
        _tmux-init-history
    fi
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
