#!/bin/bash

# -z: Returns true if the length of string is zero
# -e: Returns true if file exists (regular file, directory, or symlink)
# -f: Returns true if file exists and is a regular file
# -d: Returns true if file exists and is a directory
# -h: Returns true if file exists and is a symlink


if test ! $(which brew); then
  echo $'\e[1;37mHomebrew\e[0m: Installing...'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo $'\e[1;37mHomebrew\e[0m: Skippped, already installed'
fi
brew update

echo $'\e[1;37mHomebrew\e[0m: Updating packages...'
brew tap homebrew/bundle
brew bundle

function cloneOrUpdate()
{
  folder=$1
  if [ -d $folder ]; then
    # echo Found $folder
    cd $folder
    git pull
  else
    git clone $2 $folder
  fi
}

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
function check() {
  echo -n $'\342\234\223 '
}
symlink .zshrc
symlink .vimrc
symlink .gitconfig
symlink .gitignore_global
symlink .iterm2.zsh

echo -e $'\e[1;37mConfiging Mac...\e[0m'
check && echo Show '~/Library' folder
chflags nohidden ~/Library
check && echo Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES
check && echo Show path bar
defaults write com.apple.finder ShowPathbar -bool true
check && echo Show status bar
defaults write com.apple.finder ShowStatusBar -bool true
check && echo Allow quitting Finder via ⌘ + Q, doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true
check && echo Update OS daily
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
check && echo Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo -e $'\e[1;37mInstalling Oh My Zsh\e[0m'
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

echo -e $'\e[1;37mInstalling Vim plugins\e[0m'
(
  cloneOrUpdate ~/.vim_runtime https://github.com/amix/vimrc.git
)

echo -e $'\e[1;37mInstalling NVM\e[0m'
(
  cloneOrUpdate ~/.nvm https://github.com/creationix/nvm.git
)
