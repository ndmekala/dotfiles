# Nirmal Mekala’s Dotfiles

This is a very-much-in-progress repo.

## `init.vim`

This is essentially the equivalent of `.vimrc` for Neovim.

You will need Neovim and [`vim-plug` for Neovim](https://github.com/junegunn/vim-plug#neovim) installed.

<sub>[This article](https://dev.to/craftzdog/how-to-install-neovim-on-apple-silicon-m1-mac-27ke) specifies that you need(ed) `treesitter` and `luajit` installed from `HEAD` before installing `neovim` from `HEAD` to get things to work on Apple Silicon. This script currently does not include installing `treesitter` and `luajit` but look here if `neovim` installation fails on an Apple silicon system.</sub>

## a karabiner json file

https://github.com/vdmp/karabinersetup for an example repo and file structure insights

https://karabiner-elements.pqrs.org/docs/manual/misc/configuration-file-path/

# Strategy

- Use Mina Markham’s [formation](https://github.com/minamarkham/formation) as a base.
- Use Takuya Matsuyama’s [dotfiles](https://github.com/craftzdog/dotfiles-public) as a starting place for _what_ to include—namely not every last dotfile. Mostly `.config` (which includes `init.vim`) and `.zshrc`…

# 230625 Tasks

I need my cwmbp dotfiles represented here…

## Standard Dotfiles

- [ ] ensure .z-jump exists in `dotfiles`
- [ ] ensure .zshrc exists in `dotfiles`
- [ ] ensure .p10k.zsh exists in `dotfiles`
- [x] ensure standard dotfile bash function can handle directories gracefully
- [x] make sure script handles backups gracfully

## Dotfiles - Special Cases

## Local Dotfiles - Copy and Configure Manually

- [ ] make sure bash script handles EXAMPLE.localshrc
- [ ] make sure bash script handles EXAMPLE.todo.cfg
- [ ] ensure EXAMPLE.localshrc exists in `dotfiles`
- [ ] ensure EXAMPLE.todo.cfg exists in `dotfiles`

## Ensure `vim-plug` Gets Installed

## Archive Particular Files Used to Generate What’s in Here

- [ ] karabiner links
- [ ] papercolor.iterm

## Docment External Dependencies

- [ ] vimplug
- [ ] z-jump…
- [ ] papercolor.iterm
- [ ] karabiner linkz

## Configure Wizardry

- [ ] write `.macos` script
- [ ] ensure `.macos` script can run conditionally in Wizardry
- [ ] ensure dotfiles script will run conditionally in Wizardry…
- [ ] Write wizardry readme
