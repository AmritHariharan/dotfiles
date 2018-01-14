# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/Amrit/.oh-my-zsh

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
	chucknorris
	command-not-found
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Spaceship config
# Order

#SPACESHIP_PROMPT_ORDER=(
#	user
#	host
#	dir
#	git
#	conda
#	jobs
#	exec_time
#	line_sep
#	battery
#	char
#)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimconfig="vim ~/.vimrc"

# Courses aliases
alias eecs376="cd ~/Google\ Drive/EECS/EECS\ 376"
alias eecs370="cd ~/Google\ Drive/EECS/EECS\ 370"
alias eecs388="cd ~/Google\ Drive/EECS/EECS\ 388"
alias stats250="cd ~/Google\ Drive/STATS/STATS\ 250"

# Class project aliases
alias project370="cd ~/Google\ Drive/EECS/EECS\ 370/projects/project1"
alias project388="cd ~/Google\ Drive/EECS/EECS\ 388/projects/project1"

# Programming directories aliases
alias projects="cd ~/Desktop/Projects"
alias barbot="cd ~/Desktop/Projects/BarcodeBot"

# C4CS Main Site
alias c4cs="cd ~/Desktop/Projects/c4cs\.github\.io"

# ssh into caen
alias caen="ssh amrith@login.engin.umich.edu"

# Alias for TheFuck
eval "$(thefuck --alias)"

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

# Am bored
alias imbored="chuck | cowsay | lolcat"

# Using anaconda with zsh and not bash
export PATH="/Users/Amrit/anaconda/bin:$PATH"
