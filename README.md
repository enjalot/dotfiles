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

## global git ignore
ignore certain things (like vim's temp files) by default
```
git config --global core.excludesfile '~/dotfiles/.gitignore_global'
```


## Sublime Text 3

### command line tool (subl)
https://www.sublimetext.com/docs/3/osx_command_line.html
```
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```

### packages
install package control:  
https://sublime.wbond.net/installation

packages:
```
Better Coffeescript
Vintageous
```

### fix key repeat
defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false

## linking settings
TODO


tmux session saving
http://blog.edsantiago.com/articles/tmux-session-preserve/
https://gist.github.com/enjalot/5138865

