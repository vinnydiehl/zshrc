# mkdir and cd at the same time
mkcd() {
  dir="$*"
  mkdir -p "$dir" && cd "$dir"
}

# Attach gdb to a process by name
gdba() {
  gdb -p $(pgrep $1)
}

# Scratch pad
scratch() {
  echo $1 >> $HOME/scratch
}
