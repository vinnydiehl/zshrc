# Main initialization script for zsh. Symlinked by ~/.zshrc

autoload -U colors && colors

# This hook runs before every prompt
precmd() {
  # Build PS1 dynamically

  # Parse error code (changes arrow green/red)
  local EXIT="$?"
  if [ $EXIT != 0 ]; then
    PS1="%{$fg[red]%}󰁔 (%{$fg[magenta]%}$EXIT%{$fg[red]%})"
  else
    PS1="%{$fg[green]%}󰁔"
  fi

  # Git (only active when in a repo, changes branch name green/red)
  if [ -z "$(git status --porcelain 2>/dev/null)" ]; then
    local git_ps1_branch_color=green
  else
    local git_ps1_branch_color=red
  fi
  local git_ps1=$(__git_ps1 "%%{$fg[yellow]%%} %%{$fg[$git_ps1_branch_color]%%}%s ")

  PS1+=" %{$fg[cyan]%}%1~ $git_ps1%{$fg[yellow]%} %{$reset_color%}"
}

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
setopt SHARE_HISTORY

# Auto/tab complete
autoload -U compinit
zstyle ":completion:*" menu select
zstyle ":completion:*" completer _complete _correct _approximate
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# RBEnv
eval "$(rbenv init - zsh)"

# Rust
if [ -r $HOME/.cargo/env ]; then source $HOME/.cargo/env; fi

# Source keys
if [ -r $HOME/.config/export_keys.sh ]; then
  source $HOME/.config/export_keys.sh
fi

# Recursively source all .zsh files in config/
for f (~/.config/zsh/config/**/*.zsh(N.)) . $f

# Source keybinds last
source ~/.config/zsh/binds.zsh
