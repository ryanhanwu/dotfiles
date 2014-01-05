ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dpoggi"
CASE_SENSITIVE="false"
SHELL="/bin/zsh"
# DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=14
COMPLETION_WAITING_DOTS="true"

plugins=(autojump git brew rvm copydir copyfile encode64 node osx sublime urltools tmux vagrant)

source $ZSH/oh-my-zsh.sh

#System basic pth
export PATH=~/bin:/usr/local/sbin:/usr/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/bin:/usr/sbin:/sbin:$PATH

function addPath(){
  export PATH=$PATH:$1
}

alias vizsh="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias rm='rm -i'
alias rd='rm -rf'
alias server="python -m SimpleHTTPServer 9000 && open http://localhost:9000"


#Node.js - NVM and npm
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh
nvm use default
. <(npm completion)
#autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
#Ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#Rvm
addPath "$HOME/.rvm/bin"
#portableapps.com/
addPath "$HOME/.apportable/SDK/bin"
#Heroku
addPath "/usr/local/heroku/bin"
#Deployd
addPath "/usr/local/deployd/bin"
#Postgres Db
addPath "/Applications/Postgres.app/Contents/MacOS/bin"


