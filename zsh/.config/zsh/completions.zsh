# completions

mkdir -p ~/.zfunc/

# uv
# ------------------------------------------------------------------------------
if [[ ! -f ~/.zfunc/_uv ]]; then
  uv generate-shell-completion zsh > ~/.zfunc/_uv
fi
if [[ ! -f ~/.zfunc/_uvx ]]; then
  uvx --generate-shell-completion zsh > ~/.zfunc/_uvx
fi
fpath+=~/.zfunc

# eza (better `ls`)
# ------------------------------------------------------------------------------
fpath+=("$(brew --prefix eza)/share/zsh/site-functions")

# Initialize completions (fast, cached)
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit -C    # use cache if less than 24h old
else
  compinit
fi

