
ulimit -n 10000

export PATH=/usr/local/bin:$PATH

##alias 'ssh'='~/dotfiles/sshcolor.bash'
alias 'pys'='python -m SimpleHTTPServer'

#git aliases
alias glog='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gst='git status'

#vi editing mode!
set -o vi

# nice colors for git repos in the command line
source ~/dotfiles/git-completion.bash
source ~/dotfiles/prompt.bash

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
source $(brew --prefix nvm)/nvm.sh

clear
