mozcompiledb() {
  if cat mozconfig | grep -q '^ac_add_options.*nightly'; then
    ./mach configure
    ./mach build-backend --backend=CompileDB
    mv obj-x86_64-pc-linux-gnu/compile_commands.json .
  else
    echo "ERROR: Build must be configured for Nightly!" >&2
  fi
}

alias mach="./mach"
alias mozcr="./mach build && ./mach run"
alias mozdevcr="./mach build && ./mach run -P dev"
alias mozfastcr="./mach build faster && ./mach run -P dev"
alias mozlint="./mach lint --outgoing"
alias mozstatic="./mach static-analysis check --outgoing"
alias mozpush="./mach lint --outgoing --fix && moz-phab"
