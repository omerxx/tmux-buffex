#!/usr/bin/env bash

# Debug output
echo "Buffex edit script started" >> /tmp/buffex_debug.log
tmux capture-pane -S -3000
tmp_file="/tmp/tmux-buffex"
tmux save-buffer "$tmp_file"
echo "Buffer saved to $tmp_file" >> /tmp/buffex_debug.log

tmux new-window "nvim $tmp_file && tmux load-buffer $tmp_file && tmux delete-buffer && rm $tmp_file"
echo "Opened new window with nvim" >> /tmp/buffex_debug.log
