# tmux-lazygit

A simple tmux plugin to easily toggle a lazygit window within a tmux session.

## Features

- Toggle a lazygit window on and off with a single keybinding.
- Customize the window name and keybindings to suit your workflow.

## Requirements

- [tmux](https://github.com/tmux/tmux/wiki) (version 2.4 or higher recommended)
- [lazygit](https://github.com/jesseduffield/lazygit)

## Installation

### Using [TPM (Tmux Plugin Manager)](https://github.com/tmux-plugins/tpm)

1. Add the plugin to your tmux configuration file (`~/.tmux.conf`):

   ```tmux
   set -g @plugin 'yusufakdenizxd/tmux-lazygit'
   ```

2. Press `prefix + I` to install the plugin.

3. Restart tmux or reload your configuration: `tmux source-file ~/.tmux.conf`

### Manual Installation

1. Clone the repository:

   ```sh
   git clone https://github.com/yourusername/tmux-lazygit ~/.tmux/plugins/tmux-lazygit
   ```

2. Add the following to your `~/.tmux.conf`:

   ```tmux
   run-shell ~/.tmux/plugins/tmux-lazygit/tmux-lazygit.tmux
   ```

3. Reload your tmux configuration:
   ```sh
   tmux source-file ~/.tmux.conf
   ```

## Configuration

The plugin provides two configuration options that you can customize in your `~/.tmux.conf`:

### 1. `@tmux-lazygit-window-name`

- **Description**: Sets the name of the lazygit tmux window.
- **Default**: `lazygit`
- **Example**:
  ```tmux
  set -g @tmux-lazygit-window-name 'git-dashboard'
  ```

### 2. `@tmux-lazygit-toggle-window-key`

- **Description**: Sets the keybinding to toggle the lazygit window.
- **Default**: `prefix + Shift + g
- **Example**:
  ```tmux
  set -g @tmux-lazygit-toggle-window-key 'prefix + g'
  ```

## Usage

Once installed and configured:

1. Press `prefix + Shift + g` (or your configured keybinding) to toggle the lazygit window.
2. The lazygit interface will open in a new tmux window with the name `lazygit` (or your configured name).
3. Press the keybinding again to close the window.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

This project is licensed under the [MIT License](LICENSE).
