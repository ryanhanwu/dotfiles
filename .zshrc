ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dpoggi"
CASE_SENSITIVE="false"
SHELL="/bin/zsh"
DISABLE_UPDATE_PROMPT=true

export UPDATE_ZSH_DAYS=14
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(autojump git brew common-aliases zsh-autosuggestions copydir copyfile encode64 node osx sublime tmux xcode pod docker heroku nmap git-extras git-prompt mvn yarn)

source $ZSH/oh-my-zsh.sh
## zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
## Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Add Path
## Basic
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/local/bin:/opt/local/sbin:/bin:/usr/sbin:/sbin:$PATH

function addPath(){
  test -e $1 && export PATH=$PATH:$1
}

## Add Home Bin
addPath "$HOME/bin"
addPath "$HOME/.bin"
## Add RVM to PATH for scripting
addPath "$HOME/.rvm/bin"
## Add Python2 to PATH
addPath "/usr/local/opt/python/libexec/bin"
## Add PHP Pear tool
addPath "$HOME/pear/bin"

# Fix tmux error on Mac OS
export EVENT_NOKQUEUE=1

# PYENV
export PYENV_ROOT=/usr/local/var/pyenv

# KEY
export KEY_TC_PROD=~/Dropbox/TC/EdLabOfficialProductionKeyPair.pem
export KEY_TC_DEV=~/Dropbox/TC/EdLabDefaultDevelopmentKeyPair.pem

alias vizsh="vim ~/.zshrc"
alias vissh="vim ~/.ssh/config"
alias vivim="vim ~/.vimrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias cls="clear"
alias h="history"
alias hs="history | grep"
alias pa='ps aux'
alias rm='rm -i'
alias rd='rm -rf'
alias web="python -m SimpleHTTPServer "
alias npmc="npm ls --parseable|sed 's/.*\/\(.*\)/\1/g'|sort|uniq|wc -l"
# get web server headers #
alias header='curl -I'
# find out if remote server supports gzip / mod_deflate or not #
alias headerc='curl -I --compress'

# Kill all running containers.
alias dockerkillall='docker kill $(docker ps -q)'

# Delete all stopped containers.
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'

# Delete all untagged images.
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'

# Delete all stopped containers and untagged images.
alias dockerclean='dockercleanc || true && dockercleani'

# Lazyload Node.js - NVM and npm
lazynvm() {
  unset -f nvm node npm
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
  nvm use default
}

nvm() {
  lazynvm
  nvm $@
}

node() {
  lazynvm
  node $@
}

npm() {
  lazynvm
  npm $@
}

test -e "${HOME}/.iterm2.zsh" && source "${HOME}/.iterm2.zsh"
