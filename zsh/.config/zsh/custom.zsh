# This file sources all custom zsh files
local ZSH_CONFIG_PATH="$HOME/.config/zsh"
exclude_files=("$ZSH_CONFIG_PATH/custom.zsh" "$ZSH_CONFIG_PATH/keys.zsh")

for file in $ZSH_CONFIG_PATH/*.zsh; do
  if [[ ! " ${exclude_files[@]} " =~ " $file " ]]; then
    source "$file"
  fi
done

