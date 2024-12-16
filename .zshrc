# Add homebrew to path
export PATH="/opt/homebrew/bin:$PATH"
export COLORTERM=truecolor

autoload -U compinit; compinit

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Source submodule plugins
for plugin in $(ls ~/dotfiles/zsh_plugins/*/*.plugin.zsh); do
  source $plugin
done

# Starship prompt
eval "$(starship init zsh)"

source ~/dotfiles/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
