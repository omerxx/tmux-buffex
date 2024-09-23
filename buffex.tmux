#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Default key binding
default_key_binding="B"

tmux_option_or_default() {
    local option=$1
    local default_value=$2
    local option_value=$(tmux show-option -gqv "$option")
    if [ -z "$option_value" ]; then
        echo "$default_value"
    else
        echo "$option_value"
    fi
}

set_tmux_option() {
    local option=$1
    local value=$2
    tmux set-option -gq "$option" "$value"
}

# Get the key binding from tmux option, or use default
key_binding=$(tmux_option_or_default "@buffex-key" "$default_key_binding")

main() {
    local key_binding=$(tmux_option_or_default "@buffex-key" "$default_key_binding")
    tmux bind-key "$key_binding" run-shell "$CURRENT_DIR/buffex.sh"
    
    # Debug output
    echo "Tmux Buffex plugin loaded"
    echo "Key binding set to: $key_binding"
    echo "Script path: $CURRENT_DIR/buffex.sh"
}

main
