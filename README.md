# Dotfiles

These are dot-files and basic configs of my development Mac, feel free to use and do whatever you want.

## Requirement
### Mac Package Management

#### [HomeBrew](http://brew.sh/)

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

##### Brews
```
brew install git autojump graphicsmagick archey
brew install htop nmap mtr wget diff-so-fancy
brew install node terminal-notifier tmux tree zsh docker-compose ack ripgrep 
```

##### [HomeBrew Cask](http://caskroom.io/)
```
brew tap caskroom/cask
brew tap caskroom/versions
```

##### Cask
```
# Communication
brew cask install adium skype nally joinme

# System 
brew cask install coconutbattery alfred appcleaner ccleaner chromecast spectacle namechanger 
omnidisksweeper 

# Laptop only
brew cask install satellite-eyes

# Development
brew cask install mou iterm2 keycastr clipmenu macdown

# Network
brew cask install cyberduck cheatsheet imageoptim gas-mask firefox

# Database Realated
brew cask install robomongo sequel-pro rdm diffmerge

# Mutimedia
brew cask install mplayerx handbrake mixxx igetter

# System Packages
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook reattach-to-user-namespace
```

### Shell

Based on [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh) with some customization at **.zshrc**

```
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

## Basic Config
Checkout environment repository

```
git clone https://github.com/ryanhanwu/dotfiles.git ~/Dotfiles
```

Create symbolic link and install **Vim** Package with [Vundle](https://github.com/gmarik/Vundle.vim)

```
sh ~/Dotfiles/init.sh
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
vim +PluginInstall +qall
```
Install [**Tmux Plugin Manager**](https://github.com/tmux-plugins/tpm)
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Applications
---
#### CLI Tools

[NVM](https://github.com/creationix/nvm)

```
git clone https://github.com/creationix/nvm.git ~/.nvm
```
[AWS CLI](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-set-up.html#install-with-pip)

```
sudo easy_install pip
sudo pip install setuptools --no-use-wheel --upgrade
sudo pip install --upgrade awscli
```
#### Sublime Text 3
Creating the symbolic links after [Package Controll](https://packagecontrol.io/installation) is installed

```
git clone https://github.com/ryanhanwu/Sublime-Text-Settings.git ~/Sublime-Text-Settings
ln -s ~/Sublime-Text-Settings/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
```
* The PackageControl will check the ```Package Controll.sublime-settings``` and ```Installed Packages``` everytime it starts up and automatically installs missing plugins.


#### Utilities

* [Heroku](https://toolbelt.herokuapp.com/)

### iOS Development
```
gem install cocoapods
```

### Node.js Packages
Basic global node packages

```
npm install hexo -g //Blog
```
