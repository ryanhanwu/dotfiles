#dotfiles

These are dot-files and basic configs of my development machine(Mac), feel free to take do whatever you want.

### My dotfiles

Run this command under this repo to initialize default shell

```
sh init.sh
```

### Package management 
----
#### HomeBrew
[http://brew.sh/](http://brew.sh/)

```
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

##### Brews
```
brew install git autojump graphicsmagick htop nmap postgresql terminal-notifier tmux tree wget
```

### Shell
    
 [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh)
    
```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```

### Applications
---
#### CLI
[RVM](http://rvm.io/)

```
\curl -sSL https://get.rvm.io | bash -s stable
```

[NVM](https://github.com/creationix/nvm)

```
git clone https://github.com/creationix/nvm.git ~/.nvm
```
[AWS Cli](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-set-up.html#install-with-pip)

```
sudo easy_install pip
sudo pip install setuptools --no-use-wheel --upgrade
sudo pip install --upgrade awscli
```


#### Download
* [Deployd](http://deployd.com/)
* [Heroku](https://toolbelt.herokuapp.com/)

### Node.js Loves
---
Basic global node packages

```
npm install bower compound cordova docpad express forever grunt grunt-cli hexo nodemon sails weinre yo -g
```

