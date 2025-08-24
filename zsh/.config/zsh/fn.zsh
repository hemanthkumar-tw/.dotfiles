# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# gitcl
function gitcl() {
    if [[ "$1" == "--help" || "$1" == "-h"  ]]; then
        echo "Usage: gitcl <repository-url> [target-directory]"
        return 0
    fi

    # Ensure a repository URL is provided
    if [[ -z "$1" ]]; then
        echo "❌ Error: No repository URL provided."
        echo "Usage: gitcl <repository-url> [target-directory]"
        return 1
    fi

    # Extract arguments
    local REPOSITORY_URL="$1"
    local TARGET_DIRECTORY="$2"

    source "$HOME/.config/zsh/keys.zsh"
    
    git_constants=$(get_gitcl_constants)
    local GIT_PERSONAL_PROFILE=$(echo "$git_constants" | awk '{print $1}')
    local GIT_PERSONAL_USERNAME=$(echo "$git_constants" | awk '{print $2}')
    local GIT_PERSONAL_EMAIL=$(echo "$git_constants" | awk '{print $3}')
    local GIT_WORK_USERNAME=$(echo "$git_constants" | awk '{print $4}')
    local GIT_WORK_EMAIL=$(echo "$git_constants" | awk '{print $5}')

    # Clone the repository
    if [[ -n "$TARGET_DIRECTORY" ]]; then
        git clone "$REPOSITORY_URL" "$TARGET_DIRECTORY" || { echo "❌ git clone failed."; return 1; }
    else
        git clone "$REPOSITORY_URL" || { echo "❌ git clone failed."; return 1; }
        TARGET_DIRECTORY=$(basename "${REPOSITORY_URL%.git}")  # Extract repo name from repo url ignoring .git
    fi

    # Navigate into the cloned repo safely
    if [[ -n "$TARGET_DIRECTORY" && -d "$TARGET_DIRECTORY" ]]; then
        pushd "$TARGET_DIRECTORY" > /dev/null || return 1
    else
        echo "❌ Error: Target directory '$TARGET_DIRECTORY' does not exist."
        return 1
    fi

    # Check if it's a valid git repository
    if ! git rev-parse --is-inside-work-tree &> /dev/null; then
        echo "❌ Error: '$TARGET_DIRECTORY' is not a valid git repository."
        popd > /dev/null
        return 1
    fi

    # Configure Git profile
    if [[ "$REPOSITORY_URL" == *"$GIT_PERSONAL_PROFILE"* ]]; then
        echo "⚠️  [Be Advised] Personal Git Profile Detected..."
        git config user.name "$GIT_PERSONAL_USERNAME"
        git config user.email "$GIT_PERSONAL_EMAIL"
    else
        echo "⚠️  [Be Advised] Default (Work) Git Profile Detected..."
        git config user.name "$GIT_WORK_USERNAME"
        git config user.email "$GIT_WORK_EMAIL"
    fi

    popd > /dev/null
    echo "✅ Git Configurations Done!"
}
