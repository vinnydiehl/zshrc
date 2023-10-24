mozcompiledb() {
  if cat mozconfig | grep -q '^ac_add_options.*nightly'; then
    ./mach configure
    ./mach build-backend --backend=CompileDB
    mv obj-x86_64-pc-linux-gnu/compile_commands.json .
  else
    echo "ERROR: Build must be configured for Nightly!" >&2
  fi
}

mozinstall() {
  if ! cat mozconfig | grep -q '^ac_add_options --enable-artifact-builds'; then
    echo -n "You aren't using an artifact build! Are you sure you want to continue? "
    read -q
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
      echo "Cancelling."
      return 0
    fi
  fi

  sudo echo "Logged in." &&
    ./mach build &&
    sudo ./mach install &&
    sudo rm -rf obj-artifact*
}

# Update central and rebase your current branch onto it
mozrebase() {
  branch=$(git branch --show-current)
  git checkout bookmarks/central
  git pull --rebase
  git checkout $branch
  git rebase bookmarks/central
}

alias mach="./mach"
alias mozcr="./mach build && ./mach run"
alias mozdevcr="./mach build && ./mach run -P dev"
alias mozfastcr="./mach build faster && ./mach run -P dev"
alias mozlint="./mach lint --outgoing"
alias mozstatic="./mach static-analysis check --outgoing"
alias mozpush="./mach lint --outgoing --fix && moz-phab"
alias moztry="./mach try chooser"
