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

- [ ] there should be a .localzshrc.example
- [ ] z-jump (in .zshrc… needs to be configured properly)
- [ ] .zshrc
- [ ] .p10k.zsh
- [ ] .todo.cfg
- [ ] put papercolor iterm somewhere sensible…
- [ ] configure karabiner sensibly…
- [ ] vim plug requires running a script that beams shit into .local… need to figure out how to run that 1x (just check if its there… lol)

## Wizardry

- [ ] brew cot editor cli
- [ ] cask for tor
- [ ] cask for firefox
- [ ] cask for firefox dev edition
