

https://github.com/user-attachments/assets/c5227479-c672-44bd-b99a-36c74b1b550d

<img width="1361" height="784" alt="image" src="https://github.com/user-attachments/assets/de4297b0-11fb-4606-9866-fc56eaa4420a" />


# tmux-sessionizer-previewer


fzf picker for tmux sessions and directories, with a live preview of each session. Flip windows and panes inside the preview without leaving the picker.

Inspired by tmux-sessionizer. Standalone, no dependency on it.

## Requirements

- tmux
- fzf 0.38+
- curl
- bat (optional, for file previews)

## Install

```bash
git clone https://github.com/<you>/tmux-sessionizer-previewer
cd tmux-sessionizer-previewer
./install.sh
```

Scripts go to `~/.local/bin`. Make sure it is in your `PATH`.

## Usage

Run `tmux-pick`. Pick a tmux session, or a directory under `$HOME` (depth 2). A directory opens as a new session named after the folder.

| Key | Action |
|-----|--------|
| alt-1 .. alt-5 | switch window in previewed session |
| F1 .. F5 | switch pane in previewed session |
| alt-j / alt-k | scroll preview down / up |
| alt-r | pause / resume auto refresh |
| alt-w | toggle line wrap |
| enter | open selection |

## How it works

The preview refreshes every second through fzf's `--listen` port. fzf resets preview scroll on every refresh, so scroll position is stored in `/tmp/tmux-pick-<port>.off` and applied by `fzf-preview`. You can scroll while it keeps refreshing. Moving to another item resets scroll to the top.

## Files

| File | Job |
|------|-----|
| `bin/tmux-pick` | main picker |
| `bin/fzf-preview` | renders the preview |
| `bin/win.sh` | select window by index |
| `bin/pane.sh` | select pane by index |
| `bin/scroll.sh` | change scroll offset |

## Notes

- Mouse wheel does not scroll the session preview. Use alt-j / alt-k.
- Wrapped long lines count as one line when scrolling.
- Your terminal or WM may grab F-keys or alt-digits. Run `cat -v` and press the key to check it reaches the terminal.
- Switching window or pane in the preview changes the real active window or pane of that session.

## License

MIT
