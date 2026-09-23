export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="powerlevel10k/powerlevel10k"
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting vi-mode)

## Load plugins manually (for speed and performance)
# git
source $ZSH/plugins/git/git.plugin.zsh

# autosuggestions
if [[ -f ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# syntax highlighting (must be last)
if [[ -f ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# vi-mode plugin (from oh-my-zsh)
source $ZSH/plugins/vi-mode/vi-mode.plugin.zsh

zstyle ":omz:*" aliases no
# source $ZSH/oh-my-zsh.sh
