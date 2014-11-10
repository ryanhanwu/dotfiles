#Dotfiles

These are dot-files and basic configs of my development machine(Mac) envoronment, feel free to take and do whatever you want.

## Requirement 
----

### Mac Package Management 

#### HomeBrew
[http://brew.sh/](http://brew.sh/)

```
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

##### Brews
```
brew install git autojump graphicsmagick node htop nmap terminal-notifier tmux tree wget imagemagick zsh
```

### Shell
    
I use [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh)
    
```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s /bin/zsh
```


## Basic Config
----
Checkout environment repository

```
cd ~
git clone https://github.com/ryanhanwu/dotfiles.git Dotfiles
```

Create symbolic link and install **Vim** Package with [Vundle](https://github.com/gmarik/Vundle.vim)

```
cd ~/Dotfiles && sh init.sh
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle
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
Creating the symbolic links after ```Package Controll``` is installed

```
cd ~
git clone https://github.com/ryanhanwu/Sublime-Text-Settings.git
ln -s ~/Sublime-Text-Settings/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -s ~/Sublime-Text-Settings/Installed\ Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
```
* The PackageControl will check the ```Package Controll.sublime-settings``` and ```Installed Packages``` everytime it starts up and automatically installs missing plugins.

#### Utilities

* [Deployd](http://deployd.com/)
* [Heroku](https://toolbelt.herokuapp.com/)

### Ruby Packages
---
```
gem install sass
```

### Node.js Packages
---
Basic global node packages

```
npm install bower compound docpad express-generator forever grunt grunt-cli hexo nodemon sails yo gulp browserify -g
```

## License

MIT: http://ryanwu.mit-license.org

