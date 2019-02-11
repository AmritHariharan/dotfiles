# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="materialshell-oceanic"
#ZSH_THEME="spaceship"
ZSH_THEME=""

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=14

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	brew
	git
	osx
	command-not-found
	z
	history-substring-search
	zsh-autosuggestions
	zsh-syntax-highlighting
	kubectl
)

source $ZSH/oh-my-zsh.sh

# User configuration

fpath=( "$HOME/.zfunctions" $fpath )

# export MANPATH="/usr/local/man:$MANPATH"

# Pure prompt
autoload -U promptinit; promptinit
prompt pure

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Colours for different types of files
export LSCOLORS="Exfxcxdxbxhxexabagacad"
export LS_COLORS="di=1;34:ln=35:so=32:pi=33:ex=31:bd=37:cd=34:su=30;41:sg=30;46:tw=30;42:ow=30;43"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimconfig="vim ~/.vimrc"
alias sshconfig="vim ~/.ssh/config"
alias tmuxconfig="vim ~/.tmux.conf"

# Use nvim instead of vim
if type nvim > /dev/null 2>&1; then
	alias vim='nvim'
fi

PYENV_ROOT=$(pyenv root)

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	export EECS="$HOME/EECS"
	export PROJ="$HOME/Projects"
elif [[ "$OSTYPE" == "darwin"* ]]; then
	export EECS="$HOME/Drive/EECS"
	export PROJ="$HOME/Desktop/Projects"
	# pyenv-virtualenv
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
	# vscode
	export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
fi
export PATH="$HOME/scripts:$PATH"

# Courses aliases
alias 482="cd $EECS/EECS_482"
alias 486="cd $EECS/EECS_486"

# Programming directories aliases
alias projects="cd $PROJ"
alias barbot="cd $PROJ/BarcodeBot"

# C4CS Stuff
alias c4cs="cd $PROJ/c4cs-site"
alias csp="cd $PROJ/computer-science-pragmatics"

# ssh into caen
alias caen="ssh caen"
alias fastcaen="ssh fastcaen"

# Alias for TheFuck
eval "$(thefuck --alias)"

# Python virtualenvs
alias newenv="python -m virtualenv venv"
alias venv="source venv/bin/activate"

# Other aliases
alias longpress="defaults write -g ApplePressAndHoldEnabled -bool true"
alias nolongpress="defaults write -g ApplePressAndHoldEnabled -bool false"

# Spotify playlists
alias lfr="echo 'Playing playlist \"Liked From Radio\"'&&spotify play uri spotify:user:thestuka:playlist:6xA7cYCSFY6yUkREO12ulm"
alias chill="echo 'Playing playlist \"Chill\"'&&spotify play uri spotify:user:thestuka:playlist:3UwUYvAPhA87EmrAs4SLDk"
alias oldies="echo 'Playing playlist \"Oldies\"'&&spotify play uri spotify:user:thestuka:playlist:1tzvjhkfglbsiDRPBYBlKX"
alias funky="echo 'Playing playlist \"FUNKY\"'&&spotify play uri spotify:user:thestuka:playlist:5QIDBvAHeqVsd80rgeleRa"
alias alt="echo 'Playing playlist \"Alternative?\"'&&spotify play uri spotify:user:thestuka:playlist:6EDZjGPzTHnrrSqucjVqon"
alias djsanta="echo 'Playing playlist \"DJ SANTAS 🔥  BEATS\"'&&spotify play uri spotify:user:thestuka:playlist:7n2xDVpyaNR73ShqKvsMmI"
alias hype="echo 'Playing playlist \"HYPE.\"'&&spotify play uri spotify:user:thestuka:playlist:221jfxKAnmWiMOwMAOsglk"


# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
