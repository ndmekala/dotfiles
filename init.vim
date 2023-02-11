call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/vim/plugged')

Plug 'nvim-lualine/lualine.nvim'
Plug 'preservim/vim-pencil'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty/'
Plug 'overcache/NeoSolarized'
Plug 'junegunn/goyo.vim'
Plug 'tribela/vim-transparent'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

call plug#end()

" PRETTIER SETUP
" ==============

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" LUALINE SETUP
" =============
lua << END
require('lualine').setup{
  options = {
    theme = 'solarized_light',
    component_separators = '',
    section_separators = '',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'location'}
  },
}
END

" COLORS
" ======
if has('termguicolors')
  set termguicolors
endif

set background=light
let g:neosolarized_visibility="low"
colorscheme NeoSolarized

" VIM CONFIG
" ==========
let mapleader = ","
set relativenumber
scriptencoding utf-8
set nobackup
nnoremap <leader>1 :set nu! rnu!<CR>

" TAB SETTINGS (NOT 💯) ON WHAT THESE DO
" ======================================
set shiftwidth=2
set expandtab
set smarttab
set softtabstop=0
set tabstop=2
set nowrap
set list
" set listchars+=space:◦

" VANILLA VIM AUTO BRACKETS
" =========================
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" NERDTREE CONFIG
" ===============
nnoremap <C-\> :NERDTreeToggle<CR>
nnoremap <C-]> :NERDTreeFocus<CR>
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal nu!

" COC.NVIM CONFIG (TAB AUTOCOMPLETE)
" ==================================
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
