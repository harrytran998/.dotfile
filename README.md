# My Workflow to increase the productivity

## Zshrc
Install Ohmy ZSH
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Enabling Plugins (zsh-autosuggestions & zsh-syntax-highlighting)
 - Download zsh-autosuggestions by
 
 `git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`
 
 - Download zsh-syntax-highlighting by
 
 `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

- Download zsh-yarn-autocompletions by

 `git clone https://github.com/g-plane/zsh-yarn-autocompletions.git $ZSH_CUSTOM/plugins/zsh-yarn-autocompletions`
 
 - Open the .zshrc file to add 3 plugins which dowloaded
 
 `nano ~/.zshrc` then finding the `plugins=(git)` line
 
 - Append 3 plugins above to  `plugins()` like this 
 
 `plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-yarn-autocompletions)`
 
 - Reopen terminal

## Alacritty
