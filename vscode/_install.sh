#!/bin/zsh

VSCODE="/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code"
VSCODE_USER_PATH="$HOME/Library/Application Support/Code/User"

install_extensions() {
  for ext in $* ; do
    $VSCODE --install-extension "$ext"  || exit 1
  done
}

install_extensions \
  "wayou.vscode-todo-highlight" \
  "yzhang.markdown-all-in-one" \
  "golang.go" \
  "quillaja.goasm" \
  "kangping.protobuf" \
  "zainchen.json"
  # "vscodevim.vim"


cp -fv "$VSCODE_USER_PATH/settings.json" "$VSCODE_USER_PATH/settings.json_bak-$(date +%Y%m%d_%H%M%S)" || exit 1
cp -fv ./settings.json "$VSCODE_USER_PATH/settings.json" || exit 1
