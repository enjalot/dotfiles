dotfiles
========

bash, vim setup on a new computer

## install homebrew
http://brew.sh/

```
brew install vim
brew install bash-completion

# my bash and vim configuration
ln -s dotfiles/profile ~/.profile
ln -s dotfiles/vimrc ~/.vimrc

# case insensitive tab completion
ln -s dotfiles/inputrc ~/.inputrc
```


## global git ignore
ignore certain things (like vim's temp files) by default
```
git config --global core.excludesfile '~/dotfiles/.gitignore_global'
```

## fig
https://fig.io/

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

