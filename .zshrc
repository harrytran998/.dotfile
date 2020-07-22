# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/quangnhat/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit"


plugins=(git zsh-autosuggestions zsh-syntax-highlighting docker-compose yarn)

# @Git alias
alias gulc='git reset --soft HEAD~1' #Undo last commit
alias gpod='git pull origin develop'
# @Yarn Alias
# alias y="yarn"
# alias ya="yarn add"
# alias yad="yarn add --dev"
# alias yap="yarn add --peer"
# alias yb="yarn build"
# alias ycc="yarn cache clean"
# alias yd="yarn dev"
# alias yga="yarn global add"
# alias ygls="yarn global list"
# alias ygrm="yarn global remove"
# alias ygu="yarn global upgrade"
# alias yh="yarn help"
# alias yi="yarn init"
# alias yin="yarn install"
# alias yln="yarn lint"
# alias yls="yarn list"
# alias yout="yarn outdated"
# alias yp="yarn pack"
# alias yrm="yarn remove"
# alias yrun="yarn run"
# alias ys="yarn serve"
# alias yst="yarn start"
# alias yt="yarn test"
# alias ytc="yarn test --coverage"
# alias yuc="yarn global upgrade && yarn cache clean"
# alias yui="yarn upgrade-interactive"
# alias yuil="yarn upgrade-interactive --latest"
# alias yup="yarn upgrade"
# alias yv="yarn version"
# alias yw="yarn workspace"
# alias yws="yarn workspaces"

# @Docker Alias
alias drmia='docker rmi $(docker images -a -q)'
alias drma='docker rm $(docker container -a -q)'
#alias dco='docker-compose'
#alias dcb='docker-compose build'
#alias dce='docker-compose exec'
#alias dcps='docker-compose ps'
#alias dcrestart='docker-compose restart'
#alias dcrm='docker-compose rm'
#alias dcr='docker-compose run'
#alias dcstop='docker-compose stop'
#alias dcup='docker-compose up'
#alias dcupd='docker-compose up -d'
#alias dcdn='docker-compose down'
#alias dcl='docker-compose logs'
#alias dclf='docker-compose logs -f'
#alias dcpull='docker-compose pull'
#alias dcstart='docker-compose start'
#alias dck='docker-compose kill'

# @Zsh alias
alias zshconfig='code ~/.zshrc'

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="/usr/local/opt/node@13/bin:$PATH"
export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH="/usr/local/opt/node/bin:$PATH"
