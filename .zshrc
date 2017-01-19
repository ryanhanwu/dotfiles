ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dpoggi"
CASE_SENSITIVE="false"
SHELL="/bin/zsh"
DISABLE_UPDATE_PROMPT=true

export UPDATE_ZSH_DAYS=14
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export COMPLETION_WAITING_DOTS="true"

plugins=(autojump git brew aws rvm copydir copyfile encode64 node osx sublime urltools tmux xcode pod meteor docker heroku nmap git-extras git-prompt mvn)

source $ZSH/oh-my-zsh.sh

#System basic pth
export PATH=~/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/local/bin:/opt/local/sbin:/bin:/usr/sbin:/sbin:$PATH

function addPath(){
  export PATH=$PATH:$1
}

DISABLE_UPDATE_PROMPT=true

# Fix tmux error on Mac OS
export EVENT_NOKQUEUE=1
# PYENV 
export PYENV_ROOT=/usr/local/var/pyenv

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
#Add RVM to PATH for scripting
addPath "$HOME/.rvm/bin"
#Add PHP Pear tool
addPath "$HOME/pear/bin"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

