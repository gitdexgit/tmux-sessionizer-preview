# tmux-sessionizer-previewer

fzf tmux session and directory picker with a live preview of each session.
Inspired by tmux-sessionizer. Standalone, no dependency on it.

## Requirements
- tmux
- fzf 0.36+
- curl
- bat (optional, for file previews)

## Install
    git clone https://github.com/<you>/tmux-sessionizer-previewer
    cd tmux-sessionizer-previewer
    ./install.sh

## Usage
Run `tmux-pick`. Pick a tmux session or a directory under $HOME (depth 2).
Directories open as a new session.

| Key | Action |
|-----|--------|
| alt-1..5 | switch window in previewed session |
| F1..F5 | switch pane in previewed session |
| alt-j / alt-k | scroll preview |
| alt-w | toggle wrap |

Preview refreshes every second.

## Notes
Terminal or WM may grab F-keys or alt-digits. Check with `cat -v`.
