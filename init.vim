call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/vim/plugged')

Plug 'nvim-lualine/lualine.nvim'
Plug 'preservim/vim-pencil'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty/'
Plug 'overcache/NeoSolarized'
Plug 'junegunn/goyo.vim'
Plug 'tribela/vim-transparent'

call plug#end()

" LUALINE SETUP
lua << END
require('lualine').setup{
  options = {
    theme = 'solarized_light'
  }
}
END

" COLORS
if has('termguicolors')
  set termguicolors
endif

set background=light
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
