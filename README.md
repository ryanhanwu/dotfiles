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
* `~/.gitconfig`
* `~/.gitignore_global`
* `./.iterm2.zsh`
* `~/.tmux`
* `~/.vimrc`
* `~/.zshrc`

### Configurations

* Shell [plugins&configurations](https://github.com/ryanhanwu/dotfiles/blob/master/.zshrc) through [Oh My Zsh]()
* Vim [plugins & settings](https://github.com/amix/vimrc) through The Ultimate vimrc.
* Mac HomeBrew [settings](https://github.com/ryanhanwu/dotfiles/blob/master/Brewfile) through [Brewbundle](https://github.com/Homebrew/homebrew-bundle)
* System Node.js and [NVM](https://github.com/creationix/nvm)
* Tmux [Oh My Tmux!](https://github.com/gpakosz/.tmux.git)

# Generate Your Development SSH Key
1. Generate your key for the development machine

    ```
    ssh-keygen -t rsa -b 4096
    ```

1. Copy your public key (***~/.ssh/id_rsa.pub***) to your Github/Bitbucket Account's "SSH Keys"

1. Link git config
```
 ln -sf  ~/Dropbox/RyanDB/Mackup/.ssh/config ~/.ssh/config
```

# Create backup folder
```
 ln -sf  ~/Dropbox/RyanDB/Mackup/.mackup ~/.mackup
```
