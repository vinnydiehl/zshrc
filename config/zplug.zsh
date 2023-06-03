source ~/.zplug/init.zsh

zplug chriskempson/base16-shell, from:github
zplug plugins/gitfast, from:oh-my-zsh
zplug zplug/zplug, hook-build:"zplug --self-manage"

# Prompt to install missing plugins
if ! zplug check; then
  printf "New Zsh plugins detected! Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
