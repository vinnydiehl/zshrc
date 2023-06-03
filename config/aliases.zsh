# Source zsh config
alias so="source ~/.config/zsh/rc.zsh"

# Allow aliases with sudo
alias sudo="sudo "

alias vi=nvim
alias vim=nvim
alias suvi="sudo nvim"
alias gvim="gvim -v"
alias cvim="gvim -v"

# Ruby
alias rundr="LIBGL_ALWAYS_SOFTWARE=0 ./dragonruby"

# Python
alias python=python3
alias pip=pip3

# RuboCop
alias rcwarn="rubocop --fail-level warning --display-only-fail-level-offenses"

# Git
alias log="git log --graph --decorate --pretty=oneline --abbrev-commit"
alias co="git checkout"
alias push="git push origin"
alias pull="git pull --rebase"
alias rb="git rebase"
alias gst="git status"
alias gca="git add . && git commit"

# PostgreSQL
alias psql="sudo -u postgres psql"

# Clipboard CLI commands
alias c="xclip -selection clipboard"
alias v="xclip -selection clipboard -o"
alias pc="xclip -selection primary"
alias pv="xclip -selection primary -o"

# Package managers
alias pms="sudo pacman -S"
alias pmu="sudo pacman -Syu"
alias aur="sudo aura -A"
alias auru="sudo aura -Ayu"
alias uall="pmu && auru && sudo snap refresh"

# Shell shit
alias ls="ls --color=auto"
alias tt="gio trash"
alias hd="hexdump -CL"
alias cpr="cp -r"
alias ..="cd .."
alias cls="clear && ls"

# YouCompleteMe ctag generation
alias ycmtags="ctags -R --fields=+l *"
