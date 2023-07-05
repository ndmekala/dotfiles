# Nirmal Mekala’s Dotfiles

> NOTE: In addition to configuring things in the dotfile world, this script will also install [`vim-plug` for Neovim](https://github.com/junegunn/vim-plug#neovim).

## Acknowledgements

Takuya Matsuyama’s [dotfiles](https://github.com/craftzdog/dotfiles-public) and setup are the number one inspiration for this project.

---

This is a very-much-in-progress repo.

## `init.vim`

This is essentially the equivalent of `.vimrc` for Neovim.

You will need Neovim and [`vim-plug` for Neovim](https://github.com/junegunn/vim-plug#neovim) installed.

<sub>[This article](https://dev.to/craftzdog/how-to-install-neovim-on-apple-silicon-m1-mac-27ke) specifies that you need(ed) `treesitter` and `luajit` installed from `HEAD` before installing `neovim` from `HEAD` to get things to work on Apple Silicon. This script currently does not include installing `treesitter` and `luajit` but look here if `neovim` installation fails on an Apple silicon system.</sub>

## a karabiner json file

https://github.com/vdmp/karabinersetup for an example repo and file structure insights

https://karabiner-elements.pqrs.org/docs/manual/misc/configuration-file-path/

---

# 230625 Tasks

I need my cwmbp dotfiles represented here…

## Update the Script to Use Live Stuff!

## Documentation

- [ ] Clean up this README
- [ ] Flesh out Wizardry README.

## Standard Dotfiles

- [x] ensure .z-jump exists in `dotfiles`
- [x] ensure .zshrc exists in `dotfiles`
- [x] ensure .p10k.zsh exists in `dotfiles`
- [x] ensure standard dotfile bash function can handle directories gracefully
- [x] make sure script handles backups gracfully

## Dotfiles - Special Cases

- [x] create code to handle special cases - where you are symlinking items to specific areas within dotfiles
- [x] ensure karabiner is in there
- [x] ensure iterms stuff is in there
- [x] ensure nvim stuff is in there

## Local Dotfiles - Copy and Configure Manually

- [x] make sure bash script handles EXAMPLE.localshrc
- [x] make sure bash script handles EXAMPLE.todo.cfg
- [x] ensure EXAMPLE.localshrc exists in `dotfiles`
- [x] ensure EXAMPLE.todo.cfg exists in `dotfiles`

## Ensure `vim-plug` Gets Installed

- [x] add a place to install `vim-plug`

## Archive Particular Files Used to Generate What’s in Here

- [x] karabiner links
- [x] papercolor.iterm

## Docment External Dependencies

- [x] vimplug
- [x] z-jump…
- [x] papercolor.iterm
- [x] karabiner linkz
- [x] todo-txt vim setup

## Configure Wizardry

- [x] edit script (language/prompts, scrub out unused stuff)
- [x] write `macos` script
- [x] ensure `macos` script can run conditionally in Wizardry
- [x] ensure dotfiles script will run conditionally in Wizardry…
- [x] Write wizardry readme
