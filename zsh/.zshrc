# Add homebrew to path
export PATH="/opt/homebrew/bin:$PATH"
export COLORTERM=truecolor

autoload -U compinit; compinit

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Source submodule plugins
for plugin in $(ls ~/dotfiles/zsh/plugins/*/*.plugin.zsh); do
  source $plugin
done

# Git aliases
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gapa='git add --patch'
alias gau='git add --update'
alias gav='git add --verbose'
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete'
alias gbD='git branch --delete --force'
alias gbsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias gco='git checkout'
alias gcor='git checkout --recurse-submodules'
alias gcm='git commit --message'
alias gcam='git commit --all --message'
alias gcf='git config --list'
alias gdct='git describe --tags $(git rev-list --tags --max-count=1)'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdcw='git diff --cached --word-diff'
alias gds='git diff --staged'
alias gdw='git diff --word-diff'
alias gm='git merge'
alias gmom='git merge origin/$(git_main_branch)'
alias gmum='git merge upstream/$(git_main_branch)'
alias gl='git pull'
alias glr='git pull --rebase'
alias glrv='git pull --rebase -v'
alias glu='git pull upstream $(git_current_branch)'
alias glum='git pull upstream $(git_main_branch)'
alias gp='git push'
alias gpd='git push --dry-run'
alias gst='git status'
alias gss='git status --short'
alias gsb='git status --short --branch'

# Starship prompt
eval "$(starship init zsh)"

source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
