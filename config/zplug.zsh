source ~/.zplug/init.zsh

zplug chriskempson/base16-shell, from:github
zplug plugins/gitfast, from:oh-my-zsh
zplug zplug/zplug, hook-build:"zplug --self-manage"

zplug load
