# Add homebrew to path
export PATH="/opt/homebrew/bin:$PATH"
export COLORTERM=truecolor

autoload -U compinit; compinit

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Source submodule plugins
source ~/dotfiles/zsh_plugins/fzf-tab/fzf-tab.plugin.zsh
source ~/dotfiles/zsh_plugins/zsh-z/zsh-z.plugin.zsh

# Starship prompt
eval "$(starship init zsh)"
