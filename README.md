# Zsh Configuration

I'm just getting Zsh set up, and quite enjoying it. Here's my configuration so
far.

## Install

Remove/backup any existing `~/.zshrc` file or `~/.config/zsh/` directories.

Clone this repository:

```sh
git clone https://github.com/vinnydiehl/zshrc.git ~/.config/zsh
```

Create 2 symlinks:

```sh
ln -s ~/.config/zsh/rc.zsh ~/.zshrc
ln -s ~/.config/zsh/env.zsh ~/.zshenv
```

Install [zplug](https://github.com/zplug/zplug):

```sh
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

Source the config and install the plugins:

```sh
source ~/.zshrc
zplug install
```
