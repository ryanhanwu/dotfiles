#!/bin/sh

echo "Installing Homebrew"
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update

echo "Install Homebrew Packages"
#brew tap homebrew/bundle
#brew bundle

echo "Create dotfile links"
ln -s `pwd`/vim ~/.vim
echo "~/.vim folder linked"
ln -s `pwd`/vim/vimrc ~/.vimrc
echo "~/.vimrc linked"
ln -s `pwd`/.zshrc ~/.zshrc
echo "~/.zshrc linked"
ln -s `pwd`/.gitconfig ~/.gitconfig
echo "~/.gitconfig linked"
ln -s `pwd`/.gitignore_global ~/.gitignore_global
echo "~/.gitignore_global linked"
ln -s `pwd`/.tmux.conf ~/.tmux.conf
echo "~/.tmux.conf linked"
ln -s `pwd`/.iterm2.zsh ~/.iterm2.zsh
echo "~/.tmux.conf linked"
ln -s `pwd`/.screenrc ~/.screenrc
echo "~/.screenrc linked"


# Install Oh My Zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Vim Settings through Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
vim +PluginInstall +qall

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install Node nvm
git clone https://github.com/creationix/nvm.git ~/.nvm
# Install global NPM packages
npm install --global yarn
