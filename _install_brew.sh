#!/bin/zsh

if ! command -v /opt/homebrew/bin/brew &>/dev/null ; then
  echo "  !!! HomeBrew is not installed! See https://brew.sh"
  exit 1
fi

brew_install() {
  brew install $* || exit 1
}

brew_install \
  smartmontools \
  grpc jq yq mc \
  kubernetes-cli k9s \
  go graphviz golangci-lint \
  python3 \
  rust
