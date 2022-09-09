
" PLUGINS call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/vim/plugged')

Plug 'nvim-lualine/lualine.nvim'
Plug 'sainnhe/everforest'
Plug 'preservim/vim-pencil'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty/'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'overcache/NeoSolarized'
Plug 'junegunn/goyo.vim'

call plug#end()

" NOTES ON THEMES
" DRACULA AND EVERFOREST THEMES ARE APPARENTLY BUILT IN TO LUALINE
" ALL YOU NEED TO DO IS CHANGE THE THEME IN THE LUALINE SETUP SECTOIN
" EVERFOREST HAS SOME CUSTOMIZATIONS IN THIS FILE UNDER EVERFOREST THEME SETUP
" OTHER THAN THAT, ALL YOU NEED IS TO SET COLORSCHEME
" AS FAR AS THE TERMINAL, THOSE THEMES ARE HANDLED VIA ~/.hyper.js

" LUALINE SETUP
lua << END
require('lualine').setup{
  options = {
    theme = 'solarized_dark'
  }
}
END

" COLORS
if has('termguicolors')
  set termguicolors
endif
" set background=dark
" let g:everforest_background = 'hard'
" let g:everforest_better_performance = 1
" colorscheme everforest

" let g:dracula_italic = 0
" "colorscheme dracula

set background=dark
let g:neosolarized_visibility="low"
colorscheme NeoSolarized

" VIM CONFIG
set number
scriptencoding utf-8
set nobackup

" TAB SETTINGS (NOT 💯) ON WHAT THESE DO
set shiftwidth=2
set expandtab
set smarttab
set softtabstop=0
set tabstop=2
set nowrap
set list
set listchars+=space:•,eol:$

" VANILLA VIM AUTO BRACKETS
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
