#!/bin/bash

# -z: Returns true if the length of string is zero
# -e: Returns true if file exists (regular file, directory, or symlink)
# -f: Returns true if file exists and is a regular file
# -d: Returns true if file exists and is a directory
# -h: Returns true if file exists and is a symlink

# if test ! $(which brew); then
#   echo $'\e[1;37mHomebrew\e[0m: Installing...'
#   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# else
#   echo $'\e[1;37mHomebrew\e[0m: Skippped, already installed'
# fi
# brew update

# echo $'\e[1;37mHomebrew\e[0m: Updating packages...'
# brew tap homebrew/bundle
# brew bundle

function symlink()
{
  answer=N
  src=`pwd`/$1
  target=`echo ~/$1`
  if [ -h $target ]; then
    echo "$target is a symbolic link already"
    read -t 15 -p $'\e[0;32mDo you want to override it? (Y/n)\e[0m ' answer
  elif [ -f $target ]; then
    echo "$target is a file link already"
    read -t 15 -p $'\e[0;32mDo you want to override it? (Y/n)\e[0m ' answer
  else
    answer=Y
  fi
  if [[ $answer =~ ^(y|Y) ]]; then

    ln -sf $src $target
    echo -e -n $'\e[1;37m'$target$'\e[0m --> '$src"\n\n"
  fi
}
# function cloneUpdate()
# {
#   folder=`pwd`/$1
#   if [ -d $folder ]; then
#     cd $folder
#     git pull
#   else
#     git clone https://github.com/creationix/nvm. $folder
#   fi
# }
symlink .zshrc
symlink .vimrc
symlink .gitconfig
symlink .gitignore_global
symlink .iterm2.zsh


echo "Installing Tmux Plugin Manager from https://github.com/gpakosz/.tmux"
(
  folder=~/.tmux
  if [ -d $folder ]; then
    cd $folder
    git pull
  else
    git clone https://github.com/gpakosz/.tmux.git $folder
  fi
  ln -s -f ~/.tmux/.tmux.conf ~/
  cp ~/.tmux/.tmux.conf.local ~/
)


echo "Config Mac"
#Show Library folder
chflags nohidden ~/Library
#Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES
#Show path bar
defaults write com.apple.finder ShowPathbar -bool true
#Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Install Oh My Zsh
(
  folder=~/.oh-my-zsh
  if [ -d $folder ]; then
    cd $folder
    git pull
  else
    chsh -s $(which zsh)
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi
)

# Install Vim Settings through Vundle
(
  folder=~/.vim/bundle/vundle
  if [ -d $folder ]; then
    cd $folder
    git pull
  else
    git clone https://github.com/gmarik/Vundle.vim.git $folder
  fi
)

vim +PluginInstall +qall

echo "Install Node nvm with lazynvm"
(
  folder=~/.nvm
  if [ -d $folder ]; then
    cd $folder
    git pull
  else
    git clone https://github.com/creationix/nvm. $folder
  fi
)
