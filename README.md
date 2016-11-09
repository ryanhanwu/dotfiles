#Dotfiles

These are dot-files and basic configs of my development machine(Mac) envoronment, feel free to take and do whatever you want.

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
brew install node terminal-notifier tmux tree zsh docker-compose
```

##### [HomeBrew Cask](http://caskroom.io/)
```
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
```

##### Cask
```
#Communication
brew cask install adium skype nally joinme

#System administration
brew cask install coconutbattery alfred appcleaner ccleaner chromecast spectacle namechanger omnidisksweeper

brew cask install satellite-eyes
#Development
brew cask install paw mou iterm2 keycastr

#Network
brew cask install cyberduck  charles cheatsheet imageoptim gas-mask firefox

#Database Realated
brew cask install robomongo sequel-pro rdm diffmerge

#Mutimedia
brew cask install mplayerx handbrake mixxx igetter

# System Packages
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook suspicious-package asepsis
```

### Shell

I prefer [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh)

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
[RVM](http://rvm.io/)

```
\curl -sSL https://get.rvm.io | bash -s stable
```

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

* [Deployd](http://deployd.com/)
* [Heroku](https://toolbelt.herokuapp.com/)

### iOS Development Packages
---
* After install XCode

##### Install Alcatraz
```
curl -fsSL https://raw.github.com/supermarin/Alcatraz/master/Scripts/install.sh | sh
```

#### Plugins
* [ColorSense for Xcode](https://github.com/omz/ColorSense-for-Xcode)
* [ClangFormat-Xcode](https://github.com/travisjeffery/ClangFormat-Xcode.git)

### Ruby Packages

```
rvm use system
gem install sass
```

### Node.js Packages
Basic global node packages

```
npm install nodemon bower gulp browserify -g
npm install webpack hexo sails -g //Frameworks
```

## License

MIT: http://ryanwu.mit-license.org

