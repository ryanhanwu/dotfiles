ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dpoggi"
CASE_SENSITIVE="false"
SHELL="/bin/zsh"

export UPDATE_ZSH_DAYS=14
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export COMPLETION_WAITING_DOTS="true"

plugins=(autojump git brew rvm copydir copyfile encode64 node osx sublime urltools tmux vagrant xcode pod)

source $ZSH/oh-my-zsh.sh

#System basic pth
export PATH=~/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/local/bin:/opt/local/sbin:/bin:/usr/sbin:/sbin:$PATH

function addPath(){
  export PATH=$PATH:$1
}

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

#Node.js - NVM and npm
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion #https://github.com/creationix/nvm#bash-completion
. <(npm completion) #https://npmjs.org/doc/completion.html
nvm use default

#autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

#MongoDb
addPath "$HOME/Server/mongodb/bin"
#Rvm
addPath "$HOME/.rvm/bin"
#PonyDebugger
addPath "$HOME/Library/PonyDebugger/bin"
#Heroku
addPath "/usr/local/heroku/bin"
#Deployd
addPath "/usr/local/deployd/bin"
#Postgres Db
addPath "/Applications/Postgres.app/Contents/MacOS/bin"
#Android SDK
addPath "$HOME/LocalProjects/adt-bundle-mac-x86_64/sdk/tools"
#MAMP PHP
addPath "/Applications/MAMP/bin/php/php5.5.3/bin"
