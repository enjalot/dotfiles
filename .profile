
ulimit -n 10000

export PATH=/usr/local/bin:$PATH
#for locally installed programs (like mvim)
export PATH=$HOME/code/install:$PATH
export PATH=$HOME/anaconda/bin:$PATH
#lever cli
export PATH=$HOME/lever/cli/bin:$PATH
#ruby gems
export PATH=/usr/local/opt/ruby/bin:$PATH

# ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

ssh-add ~/.ssh/enjamini
ssh-add ~/.ssh/id_enj_mba
#ssh-add ~/.ssh/lever-ec2
##alias 'ssh'='~/dotfiles/sshcolor.bash'
alias 'vim'='mvim -v'

alias 'sshe'='ssh enjalot@enja.org'
alias 'sshtrib'='ssh ubuntu@tributary.io -i ~/.ssh/enjalot_tributary.pem'
alias 'sshslurp'='ssh ubuntu@54.235.119.124 -i ~/.ssh/enjalot_tributary.pem'
alias 'scpslurp'='scp -i ~/.ssh/enjalot_tributary.pem ubuntu@54.235.119.124:$1'

alias 'sshk'='ssh ubuntu@50.19.108.27 -i .ssh/kijani.pem'

alias 'pys'='python -m SimpleHTTPServer'

export DOCKER_HOST=tcp://127.0.0.1:4243
alias docker="sudo docker -H $DOCKER_HOST"

# server connection aliases
alias 'ldb2'='ssh enjalot@mongo-prod.s.lever.co -p 22'
alias 'lrep'='ssh enjalot@54.184.8.65 -p 222'

#git aliases
alias glog='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gst='git status'

# ampline
# give me variable saving!
#alias gs='amp -p "...(.*)$" git status -s'
#alias gbr='amp -p " ? (?:remotes\\/)?(?:origin\\/)?(.*)$" git branch' # supports -a, -r flags

#alias l='CLICOLOR_FORCE=1 amp -p "(.*)" ls -1'
#alias find='amp -p "(.*)" find'
# give me variable expansion!
#alias ga='amp git add'
#alias grm='amp git rm'
#alias gco='amp git checkout'
#alias gd='amp git diff'
#alias gdh='amp git diff HEAD'
#alias gunstage='amp git unstage'
#alias cat='amp cat'
#alias less='amp less'
#alias mocha='amp mocha'

# use like grepall "my search" /var/log/lever/upload.log
#alias 'grepall'="cd $HOME/lever/chef-repo; knife search node 'chef_environment:prod AND role:frontend' -i | grep -vE '(^$)|(found$)' | sed s/$/.s.lever.co/ | pssh -l enjalot -iP -t0 -h /dev/stdin sudo grep -irn '$1' '$2'"
#alias 'testall'="cd $HOME/lever/chef-repo; knife search node 'chef_environment:prod AND role:frontend' -i | grep -vE '(^$)|(found$)' | sed s/$/.s.lever.co/ | pssh -l enjalot -iP -t0 -h /dev/stdin echo 'one $1' 'two $2'"

grepall() {
  cd $HOME/lever/chef-repo;
  search=$1
  file=$2
  #knife search node 'chef_environment:prod AND role:frontend' -i | grep -vE '(^$)|(found$)' | sed s/$/.s.lever.co/ | pssh -l enjalot -iP -t0 -h /dev/stdin sudo grep -irn "$1" "$2"
  knife search node 'chef_environment:prod AND role:frontend' -i | grep -vE '(^$)|(found$)' | sed s/$/.s.lever.co/ | pssh -l enjalot -iP -t0 -h /dev/stdin sudo grep -irn "'$search'" "$file"
}
#alias 'grepallupload'="knife search node 'chef_environment:prod AND role:frontend' -i | grep -vE '(^$)|(found$)' | sed s/$/.s.lever.co/ | pssh -l enjalot -iP -t0 -h /dev/stdin sudo grep -irn '$1' /var/log/lever/upload.log"

#vi editing mode!
set -o vi

source ~/.git-completion.bash
source ~/.prompt.bash
source ~/lever/scripts/bash/.lever-profile

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
source $(brew --prefix nvm)/nvm.sh

# added by Anaconda 1.9.2 installer
export PATH="/Users/enjalot/anaconda/bin:$PATH"

clear
