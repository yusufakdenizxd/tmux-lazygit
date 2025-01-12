#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$CURRENT_DIR/utils.sh"

main() {
	local toggle_key=$(get_tmux_option "@tmux-lazygit-toggle-window-key" "G")

	tmux bind-key -r "$toggle_key" run-shell "$CURRENT_DIR/toggle-window.sh"
}

main
