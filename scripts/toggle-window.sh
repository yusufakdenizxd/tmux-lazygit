#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$CURRENT_DIR/utils.sh"

toggle_lazygit_window() {
	local lazygit_window_name=$(get_tmux_option "@tmux-lazygit-window-name" "lazygit")
	local current_window=$(tmux display-message -p '#W')
	local current_path=$(tmux display-message -p -F "#{pane_current_path}")

	if [ "$current_window" = "$lazygit_window_name" ]; then
		tmux last-window
		return
	fi

	res=$(tmux list-windows -F "#{window_name}" | grep -i "$lazygit_window_name")

	if [ -n "$res" ]; then
    tmux select-window -t "$lazygit_window_name"
	else
		tmux new-window -c "$current_path" -n "$lazygit_window_name" 'lazygit'	
	fi
}

toggle_lazygit_window 
