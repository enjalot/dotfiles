

# MacPorts Installer addition on 2011-08-09_at_12:27:24: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#for locally installed programs (like mvim)
export PATH=/Users/enjalot/code/install:$PATH
#docco
export PATH=/Users/enjalot/code/install/docco/bin:$PATH

alias 'sshe'='ssh enjalot@enja.org'
alias 'sshtrib'='ssh ubuntu@23.21.158.201 -i ~/.ssh/enjalot_tributary.pem'
alias 'sshm'='ssh ubuntu@50.16.223.147 -i ~/.ssh/enjalot_tributary.pem'

alias 'vim'='mvim -v'

alias 'watch'='coffee -wc -o static/js static/coffee'
alias 'watchthis'='coffee -wcb -o . .'

alias 'gpod'='git pull origin develop --recurse-submodules'

#ssh related settings
ssh-add ~/.ssh/id_enj_mba

#vi editing mode!
set -o vi

preview_latex () {
	latexmk -pvc -view=pdf "$@" #2>&1 > preview_latex.log
}

source ~/.git-completion.bash
source ~/.prompt.bash
#source /etc/bashrc
