dotfiles
========

bash, vim setup on a new computer

## install homebrew
http://brew.sh/


```
# auth with github
brew install gh
gh auth login

# get the dot files
git clone https://github.com/enjalot/dotfiles.git

# my bash and vim configuration
ln -s dotfiles/profile ~/.zprofile
ln -s dotfiles/vimrc ~/.vimrc

# set vi mode
ln -s dotfiles/inputrc ~/.inputrc

# set up fig for autocomplete
brew install fig
fig

# turn off case sensitive in zsh
vim .zshrc
# add CASE_SENSITIVE="false"

# vundle (for vim)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# pathogen (for vim)
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```



---
# DEPRECATED

## install vundle
https://github.com/gmarik/vundle

## install pathogen
http://www.vim.org/scripts/script.php?script_id=2332


## bash completion and colorful git repos
`brew install bash-completion`

you can see in `profile` how we accomplish
```
source ~/dotfiles/git-completion.bash
source ~/dotfiles/prompt.bash
```

brew install vim
brew install bash-completion

## global git ignore
ignore certain things (like vim's temp files) by default
```
git config --global core.excludesfile '~/dotfiles/.gitignore_global'
```

