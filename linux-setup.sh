sudo apt install libfuse2 build-essential pkg-config zsh tmux cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 -y


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# A version manager for all your favorite languages and tools. A unified toolchain.
curl -fsSL https://moonrepo.dev/install/proto.sh | bash


# Setup git
git config --global init.defaultBranch main
git config --global web.browser google-chrome
git config --global core.whitespace fix,-indent-with-non-tab,trailing-space,cr-at-eol
git config --global core.pager delta
git config --global core.ignorecase false
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global pull.rebase true

// Need to change to company name here
git config --global includeIf.gitdir/i:~/Desktop/Code/COMPANY_NAME.path ~/Desktop/Code/COMPANY_NAME/.gitconfig
git config --global includeIf.gitdir/i:~/Desktop/Code/Me.path ~/Desktop/Code/Me/.gitconfig

# @Git alias zsh
alias gpo='git pull origin'
alias grf='git checkout -f' #Revert modified files
alias guf='git clean -fd' #Remove untracked files
alias gulc='git reset --soft HEAD~1' #Undo last commit


proto install bun
proto install node lts
proto install rust
proto plugin add buf "source:https://raw.githubusercontent.com/stk0vrfl0w/proto-toml-plugins/main/plugins/buf.toml"
proto install buf
proto plugin add helm "source:https://raw.githubusercontent.com/stk0vrfl0w/proto-toml-plugins/main/plugins/helm.toml"
proto install helm
proto plugin add kubectl "source:https://raw.githubusercontent.com/stk0vrfl0w/proto-toml-plugins/main/plugins/kubectl.toml"
proto install kubectl
proto plugin add moon "source:https://raw.githubusercontent.com/moonrepo/moon/master/proto-plugin.toml"
proto install moon

# Add to .zshrc

function execr() {
  find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && $1" \;
}
