# Dotfiles

These are dot-files and basic configs of my development Mac, feel free to use and do whatever you want.


# Installation
Checkout the repository and simply run `init.sh`

```
git clone https://github.com/ryanhanwu/dotfiles.git && cd dotfiles
sh ./init.sh
```

## What's installed? 
### Linked Dotfiles
* `~/.vim`
* `~/.vimrc`
* `~/.zshrc`
* `~/.gitconfig`
* `~/.gitignore_global`
* `~/.tmux`
* `~/.tmux`
* `~/.screenrc`


### Configurations

* Shell [plugins&configurations](https://github.com/ryanhanwu/dotfiles/blob/master/.zshrc) through [Oh My Zsh]()
* Vim [plugins & settings](https://github.com/ryanhanwu/dotfiles/blob/master/vim/vimrc) through [Vundle]()
* Mac HomeBrew [settings](https://github.com/ryanhanwu/dotfiles/blob/master/Brewfile) through [Brewbundle](https://github.com/Homebrew/homebrew-bundle)
* System Node.js and [NVM](https://github.com/creationix/nvm)
* Tmux [config](https://github.com/ryanhanwu/dotfiles/blob/master/.tmux.conf) through [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

#### Sublime Text 3
Creating the symbolic links after [Package Controll](https://packagecontrol.io/installation) is installed

```
git clone https://github.com/ryanhanwu/Sublime-Text-Settings.git ~/Sublime-Text-Settings
ln -s ~/Sublime-Text-Settings/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
```
* The PackageControl will check the ```Package Controll.sublime-settings``` and ```Installed Packages``` everytime it starts up and automatically installs missing plugins.