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
brew install git autojump graphicsmagick 
brew install node htop nmap terminal-notifier tmux tree wget imagemagick zsh
```

##### [HomeBrew Cask](http://caskroom.io/)
```
brew install caskroom/cask/brew-cask
```

##### Cask
```
brew cask install adium skype nally limechat linkinus
brew cask install coconutbattery alfred appcleaner ccleaner chromecast spectacle firefox omnidisksweeper 
brew cask install cyberduck brackets charles cheatsheet imageoptim gas-mask
brew cask install robomongo sequel-pro rdm
brew cask install mou namechanger flickr-uploadr joinme
brew cask install mplayerx handbrake mixxx
brew cask alfred link
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook suspicious-package
```

### Shell

I prefer [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh)
    
```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s /bin/zsh
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
npm install forever nodemon bower puer grunt-cli yo gulp browserify -g
npm install npm-dep-info -g
npm install docpad express-generator compound hexo sails -g //Frameworks
```

## License

MIT: http://ryanwu.mit-license.org

