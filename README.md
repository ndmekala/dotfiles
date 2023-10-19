# Nirmal Mekala’s Dotfiles

> A set of dotfiles for use with `zsh` on macOS<a href="#asterisk"><sup>*</sup></a>.

## Usage

This directory assumes it exists at `~/.dotfiles`. Clone the repo to that location.

```sh
git clone https://github.com/ndmekala/dotfiles ~/.dotfiles
```

Review the setup script. Then `cd` into the directory and run the setup command.

```sh
cd ~/.dotfiles
./setup_dotfiles
```

This script performs three main functions:

- creating simple symlinks between dotfiles in this directory and `~`
- creating symlinks between subdirectories in this directory and specific places within dotfiles (e.g. `nvim` goes to `~/.config/nvim`)
- copying sample files that need machine-specific configuration

It will backup existing files and skip if a symlink already exists.

It also installs [`vim-plug` for Neovim](https://github.com/junegunn/vim-plug#neovim) on systems that do not have it.

## What’s Included

- Neovim setup
- powerlevel10k zsh setup
- karabiner elements (macOS keybindings) setup
- sample config file for `todo-txt` CLI
- `z` for fast directory jumping
- a minimalist `tmux` configuration

## See Also

- These dotfiles and script are used as part of [`wizardry`](https://github.com/ndmekala/wizardry), a script I use to configure and manage my macOS systems
- `docs/sources.md` for more info on what all is included here

## Acknowledgements

- Takuya Matsuyama’s [dotfiles](https://github.com/craftzdog/dotfiles-public) and setup are the number one inspiration for this project
- Zach Holman’s [dotfiles](https://github.com/holman/dotfiles)

<small id="asterisk"><sup>*</sup>I’ve had good success adapting these dotfiles to work with `zsh` on Linux as well. Some macOS-specific logic in the `.zshrc` file precludes symlinking, but copying and tweaking worked well. Just make sure you install all the utilities the dotfiles reference.</small>