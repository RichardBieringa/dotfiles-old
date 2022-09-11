#!/usr/bin/env bash

is_osx() {
	local platform=$(uname)
	[ "$platform" == "Darwin" ]
}

command_exists() {
	local command="$1"
	type "$command" >/dev/null 2>&1
}

main() {
    # VI copy mode
    tmux set-window-option -g mode-keys vi

    copy_command=""
    if is_osx && command_exists "pbcopy"
    then
        copy_command="pbcopy"
    elif command_exists "xclip"
    then
        copy_command="xclip -in -selection clipboard"
    fi

    # Select
    tmux bind -T copy-mode-vi v send -X begin-selection

    # Copy/Yank
    tmux bind -T copy-mode-vi y send -X copy-selection-and-cancel "$copy_command"
    tmux bind -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel "$copy_command"
}
main