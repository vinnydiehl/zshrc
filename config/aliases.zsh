# Source zsh config
alias so="source ~/.config/zsh/rc.zsh"

# Allow aliases with sudo
alias sudo="sudo "

alias wifi="nmtui"

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
alias gpr="git pull --rebase"

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
alias auru="yes | sudo aura -Ayu"
alias uall="pmu && auru && sudo snap refresh"

# Shell shit
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias tt="gio trash"
alias hd="hexdump -CL"
alias cpr="cp -r"
alias ..="cd .."
alias cls="clear && ls"

# YouCompleteMe ctag generation
alias ycmtags="ctags -R --fields=+l *"

# Upload file for single use download
alias bashupload="curl bashupload.com -T"

# HDMI
alias hdmi-left="xrandr --output HDMI-1-0 --auto --left-of eDP-1"
alias hdmi-right="xrandr --output HDMI-1-0 --auto --right-of eDP-1"
