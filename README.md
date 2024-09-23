# Tmux Buffex

Tmux Buffex is a plugin that allows you to easily edit your tmux buffer content in Neovim.

## Features

- Edit tmux buffer content in Neovim
- Configurable key binding
- Seamless integration with your tmux workflow

## Installation

### Using TPM (Tmux Plugin Manager)

1. Add the following line to your `~/.tmux.conf`:

```tmux
set -g @plugin 'omerxx/tmux-buffex'
```

2. Press `prefix` + `I` to fetch and install the plugin.

### Manual Installation

1. Clone the repository:

```bash
git clone https://github.com/omerxx/tmux-buffex.git ~/.tmux/plugins/tmux-buffex
```

2. Make the plugin files executable:

```bash
chmod +x ~/.tmux/plugins/tmux-buffex/buffex.tmux ~/.tmux/plugins/tmux-buffex/buffex.sh
```

3. Add the following line to your `~/.tmux.conf`:

```tmux
run-shell ~/.tmux/plugins/tmux-buffex/buffex.tmux
```

4. Reload tmux configuration:

```bash
tmux source-file ~/.tmux.conf
```

## Usage

Press `prefix` + `B` (default) to open the current tmux buffer in Neovim for editing.

## Configuration

You can change the default key binding by adding the following line to your `~/.tmux.conf`:

```tmux
set -g @buffex-key 'C'
```

Replace `'C'` with your preferred key.

## License

This project is licensed under the MIT License.
