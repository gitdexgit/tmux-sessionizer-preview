#!/usr/bin/env bash
set -e
dest="$HOME/.local/bin"
mkdir -p "$dest"
cp bin/* "$dest"/
chmod +x "$dest"/{tmux-pick,win.sh,pane.sh,fzf-preview}
echo "Installed to $dest. Make sure it is in your PATH."
