export SDKMAN_DIR="$HOME/.sdkman"

# Define a lazy loader for sdk
sdk() {
  # Remove this function so it doesn’t recurse
  unset -f sdk

  # Source SDKMAN only once, the first time sdk is called
  [[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

  # Forward the call to the real sdk function
  sdk "$@"
}
