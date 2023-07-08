addpath() {
  export PATH=$PATH:$1
}

addpath $HOME/bin
addpath $HOME/.local/bin
addpath $HOME/.local/share/gem/ruby/3.0.0/bin
addpath $HOME/.mozbuild/git-cinnabar
addpath /usr/local/bin
addpath /var/lib/snapd/snap/bin

# Haskell
addpath $HOME/.ghcup/bin
addpath $HOME/.cabal/bin
