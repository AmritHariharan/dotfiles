# Load things
module load gcc/7.1.0
module load python/3.7

# Add ref to bin for compiled programs
PATH="/home/amrith/bin/:$PATH"
export VIMRUNTIME="/home/amrith/bin/vim8/runtime"

# Prompt
PS1="\u:\W$ "

# Move to a project directory
function p() {
	CURR_PROJ=$(ls -r /home/$(whoami)/Private/EECS/EECS_$1/projects | head -n 1)
	cd /home/$(whoami)/Private/EECS/EECS_$1/projects/$CURR_PROJ
}

# zsh style git aliases to keep me from going insane while using bash
alias ga="git add"
alias gaa="git add ."
alias gc="git commit"
alias gd="git diff"
alias gcmsg="git commit -m"
alias gcb='git checkout -b'
alias gf="git fetch"
alias gfo="git fetch origin"
alias glola="git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all"
alias gp="git push"
alias gra="git remote add"
alias gst="git status"
alias gwch="git whatchanged -p --abbrev-commit --pretty=medium"
alias oops="git stash && git stash drop"
alias vimdiff="git difftool --tool=vimdiff"
