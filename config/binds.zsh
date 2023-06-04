# <C-o>: Use lf to switch directories
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s "^o" "lfcd\n"

# <C-Space> to accept suggestion
bindkey "^ " autosuggest-accept

# Spawns another terminal emulator in the same directory
spawn_terminal_emulator() {
  $(basename '/'$(ps -o cmd -f -p $(cat /proc/$(echo $$)/stat | cut -d ' ' -f 4) | tail -1 | sed 's/ .*$//')) > /dev/null 2>&1 &
}

zle -N spawn_terminal_emulator
bindkey "^n" spawn_terminal_emulator
