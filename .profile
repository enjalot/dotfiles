
ulimit -n 10000

# MacPorts Installer addition on 2011-08-09_at_12:27:24: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#for locally installed programs (like mvim)
export PATH=/Users/enjalot/code/install:$PATH
#docco
export PATH=/Users/enjalot/code/install/docco/bin:$PATH

alias 'sshe'='ssh enjalot@enja.org'
alias 'sshtrib'='ssh ubuntu@23.21.158.201 -i ~/.ssh/enjalot_tributary.pem'
alias 'sshoa'='ssh ubuntu@107.22.225.160 -i ~/.ssh/enjalot_tributary.pem'
alias 'sshm'='ssh ubuntu@50.16.223.147 -i ~/.ssh/enjalot_tributary.pem'
alias 'sshk'='ssh ubuntu@50.19.108.27 -i .ssh/kijani.pem'

alias 'pss'='python -m SimpleHTTPServer'

alias 'vim'='mvim -v'

alias 'watch'='coffee -wc -o static/js static/coffee'
alias 'watchthis'='coffee -wcb -o . .'

alias 'gpod'='git pull origin develop --recurse-submodules'

#lever
alias 'lmongod'='~/lever/downloads/mongodb-osx-x86_64-2.2.1/bin/mongod --dbpath ~/lever/downloads/mongodb-osx-x86_64-2.2.1/data'
alias 'lmongo'='~/lever/downloads/mongodb-osx-x86_64-2.2.1/bin/mongo'
alias 'lmongorestore'='~/lever/downloads/mongodb-osx-x86_64-2.2.1/bin/mongorestore'
alias 'lmongodump'='~/lever/downloads/mongodb-osx-x86_64-2.2.1/bin/mongodump'
alias 'lsolr'='cd ~/lever/downloads/apache-solr-4.0.0/solr/example/; java -jar start.jar'
alias 'lnode'='cd ~/lever/ats;NODE_ENV=development AWS_ACCESS_KEY=AskSomeone AWS_SECRET=AskSomeone node server.js'

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
#source /etc/bashrc
