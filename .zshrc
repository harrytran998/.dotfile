# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/harrytran/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting docker-compose yarn)

# @Git alias
alias gpo='git pull origin'
alias grf='git checkout -f' #Revert modified files
alias guf='git clean -fd' #Remove untracked files
alias gulc='git reset --soft HEAD~1' #Undo last commit
alias gpod='git pull origin develop'
alias gdiffstat="git diff --stat | tail -n1"
alias gaalldel="git status -s | grep -E '^ D' | cut -d ' ' -f3 | xargs git add --all"

# @Flutter Alias
alias fl='flutter'
alias flh='flutter --help'
alias flr='flutter run'
alias fldoc='flutter docker'
alias flpg='flutter pub get '
alias flc='flutter clean'
alias fle='flutter emulators'

###-begin-flutter-completion-###

if type complete &>/dev/null; then
  __flutter_completion() {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           flutter completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -F __flutter_completion flutter
elif type compdef &>/dev/null; then
  __flutter_completion() {
    si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 flutter completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef __flutter_completion flutter
elif type compctl &>/dev/null; then
  __flutter_completion() {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       flutter completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K __flutter_completion flutter
fi

###-end-flutter-completion-###

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

### Other TIP

# MacOS
adddock--large() {
  defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
  killall Dock
}

# Maybe enter two times
adddock() {
  defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'
  killall Dock
}

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="/usr/local/opt/node@14/bin:$PATH"export PATH="/usr/local/opt/node@12/bin:$PATH"
