# Zsh Configuration

I'm just getting Zsh set up, and quite enjoying it. Here's my configuration so
far.

## Install

Remove/backup any existing `~/.zshrc`/`.zprofile`/`.zshenv` files and
`~/.config/zsh/` directory.

Clone this repository:

```sh
git clone https://github.com/vinnydiehl/zshrc.git ~/.config/zsh
```

Install [zplug](https://github.com/zplug/zplug):

```sh
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

Create 3 symlinks:

```sh
ln -s ~/.config/zsh/rc.zsh ~/.zshrc
ln -s ~/.config/zsh/profile.zsh ~/.zprofile
ln -s ~/.config/zsh/env.zsh ~/.zshenv
```

Make a cache directory:

```sh
mkdir -p ~/.cache/zsh
```

Source the config:

```sh
source ~/.zshrc
```
