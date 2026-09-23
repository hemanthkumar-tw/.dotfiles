# custom
# ------------------------------------------------------------------------------
alias shadcn="npx shadcn@latest"
alias python=python3
alias ptry=poetry
alias ts="date +%FT%T"
alias pd="cd ~/Documents/Hemanth/"
alias wd="cd ~/Documents/Org/"
alias n="nvim ."
alias uvenv="uv venv .venv && source .venv/bin/activate"
alias llm="ollama"
alias j="just"
alias lg="lazygit"
alias cls="clear"

# eza (better `ls`)
# ------------------------------------------------------------------------------
if type eza &>/dev/null; then
  alias l="eza --icons=always"
  alias ls="eza --icons=always"
  alias ll="eza -lg --icons=always"
  alias la="eza -lag --icons=always"
  alias lt="eza -lTg --icons=always"
  alias lt2="eza -lTg --level=2 --icons=always"
  alias lt3="eza -lTg --level=3 --icons=always"
  alias lta="eza -lTag --icons=always"
  alias lta2="eza -lTag --level=2 --icons=always"
  alias lta3="eza -lTag --level=3 --icons=always"
  alias ltv="eza --tree --git-ignore --ignore-glob='__pycache__|*.pyc|*.pyo|*.pyd|.pytest_cache|.mypy_cache|.ruff_cache|.venv|dist|build|*.egg-info'"
  alias lti="eza --tree --icons --group-directories-first --git-ignore --ignore-glob='__pycache__|*.pyc|*.pyo|*.pyd|.pytest_cache|.mypy_cache|.ruff_cache|.venv|dist|build|*.egg-info'"
else
  echo ERROR: eza could not be found. Skip setting up eza aliases.
fi

# brew
# ------------------------------------------------------------------------------
alias bO='brew outdated --greedy'                                                                                                                                                    # brew Outdated (greedy)
alias bU='brew upgrade --greedy'                                                                                                                                                     # brew Upgrade (greedy)
alias bX='brew bundle check || brew bundle --all --cleanup || true; brew bundle cleanup -f || true; brew cleanup --prune=all || true; brew autoremove || true; brew upgrade || true' # brew eXtream cleanup & upgrade

# cargo
# ------------------------------------------------------------------------------
alias c='cargo'                   # Shorter access to Cargo
alias cb='cargo build'            # Build the project
alias cbr='cargo build --release' # Build in release mode
alias cr='cargo run'              # Run the project
alias crr='cargo run --release'   # Run in release mode
alias ct='cargo test'             # Run tests
alias ci='cargo install'          # Install a Cargo package
alias cup='cargo update'          # Update dependencies
alias ccl='cargo clean'           # Remove build artifacts
alias cfmt='cargo fmt'            # Format code
