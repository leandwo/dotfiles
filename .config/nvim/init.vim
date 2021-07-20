call plug#begin(stdpath('data') . '/plugged')
  Plug 'itchyny/calendar.vim'
  Plug 'vimwiki/vimwiki'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-commentary'
  Plug 'junegunn/vim-easy-align'
  Plug 'joshdick/onedark.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'itchyny/vim-cursorword'
  Plug 'tools-life/taskwiki'

call plug#end()


" Fundamental settings
  set fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
  set fileformat=unix
  set fileformats=unix,dos,mac
  filetype on
  filetype plugin on
  filetype plugin indent on
  syntax on
" Some useful settings
  set smartindent
  set expandtab         "tab to spaces
  set tabstop=2         "the width of a tab
  set shiftwidth=2      "the width for indent
  set foldenable
  set foldmethod=indent "folding by indent
  set foldlevel=99
  set smartcase         "if searching text contains uppercase case will not be ignored
  set ignorecase        "ignore the case when search texts
" Lookings
  set number           "line number
  set relativenumber
  set cursorline       "hilight the line of the cursor
  set cursorcolumn     "hilight the column of the cursor
  set nowrap           "no line wrapping
  colorscheme onedark  
  set background=dark "use the light version of gruvbox
" Other Settings
  set termguicolors
  set clipboard=unnamedplus

" Shortcuts
  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)
  nnoremap <C-L> :nohlsearch<CR><C-L>

  " Set leader
  nnoremap <SPACE> <Nop>
  let mapleader = "\<Space>"

" Vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_folding = 'custom'

" Calendar.vim
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
source ~/.cache/calendar.vim/credentials.vim

" init.vim Inspiration
  " https://github.com/zhranklin/init.vim/blob/master/files/.config/nvim/init.vim
