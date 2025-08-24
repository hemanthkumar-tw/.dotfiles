export PATH="$(brew --prefix)/opt/curl/bin:$PATH"
export PATH="$HOME/.console-ninja/.bin:$PATH"

# Rancher Desktop
export PATH="/Users/hemanth/.rd/bin:$PATH" # Rancher Desktop

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

# testcontainers
export DOCKER_HOST=unix://$HOME/.rd/docker.sock
# export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE="/var/run/docker.sock" 
# export TESTCONTAINERS_HOST_OVERRIDE=$(rdctl shell ip a show rd0 | awk '/inet / {sub("/.*",""); print $2}')
export TESTCONTAINERS_HOST_OVERRIDE=$(rdctl shell ip a show rd1 | awk '/inet / {sub("/.*",""); print $2}')

# starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

