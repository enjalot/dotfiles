ulimit -n 10000

export PATH=/usr/local/bin:$PATH
#for locally installed programs (like mvim)
export PATH=$HOME/code/install:$PATH
#lever cli
export PATH=$HOME/lever/cli/bin:$PATH
#ruby gems
export PATH=/usr/local/opt/ruby/bin:$PATH

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##alias 'ssh'='~/dotfiles/sshcolor.bash'
alias 'vim'='mvim -v'

alias 'sshe'='ssh enjalot@enja.org'
alias 'sshtrib'='ssh ubuntu@tributary.io -i ~/.ssh/enjalot_tributary.pem'
alias 'sshk'='ssh ubuntu@50.19.108.27 -i .ssh/kijani.pem'

#git aliases
alias glog='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gst='git status'

#lever

alias 'sl'='cd ~/lever/chef-repo;knife ec2 server list'
alias 'lv'='cd ~/lever/cloud/dev;vagrant ssh'
alias 'tailall'="knife search node 'chef_environment:prod AND role:frontend' -i | grep -vE '(^$)|(found$)' | sed s/$/.s.lever.co/ | pssh -iP -t0 -h /dev/stdin sudo tail -fn 100 /var/log/lever/hire.log"
alias 'tailallupload'="knife search node 'chef_environment:prod AND role:frontend' -i | grep -vE '(^$)|(found$)' | sed s/$/.s.lever.co/ | pssh -iP -t0 -h /dev/stdin sudo tail -fn 300 /var/log/lever/upload.log"

alias 'grepallupload'="knife search node 'chef_environment:prod AND role:frontend' -i | grep -vE '(^$)|(found$)' | sed s/$/.s.lever.co/ | pssh -iP -t0 -h /dev/stdin sudo grep -irn '$1' /var/log/lever/upload.log"

#vi editing mode!
set -o vi

source ~/.git-completion.bash
source ~/.prompt.bash

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
