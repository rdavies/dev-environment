" plugin manager
" run ':PlugInstall' or ':PlugUpdate' or 'PlugUpgrade' for vim-plug itself
call plug#begin('~/.vim/plugged')
  " tree explorer
Plug 'scrooloose/nerdtree'
    " toggle tree with ctrl+n
map <C-n> :NERDTreeToggle<CR>
  " better status bar
Plug 'vim-airline/vim-airline'
    " vim-airline config
set t_Co=256
let g:airline_powerline_fonts = 1 " need powerline fonts installed
  " better vim/tmux pane navigation
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

syntax on                    " syntax highlighting
set number                   " line numbers
set directory=~/.vim/tmp//   " where to place swp files

" moving cursor vertically won't skip wrapped lines
nnoremap j gj
nnoremap k gk

set shiftwidth=2             " spacing when using << or >>
set tabstop=2                " how many spaces tab should be
set softtabstop=2            " how many spaces tab is in insert mode
set expandtab                " inserts space characters when tab is pressed
" set autoindent               " copy indentation from previous line
" set smartindent              " insert one extra level of tabbing in some cases
  " don't use with filetype plugin indent on
set smarttab                 " tab inserts spaces according to sw
set scrolloff=2              " keep at least 2 lines above/below
set cursorline               " underline cursor's current line

set splitright               " new verticle splits appear on the right
set splitbelow               " new horizontal splits appear below
set showmatch                " show matching brackets
set hlsearch                 " highlight search results
set ignorecase               " ignore case when searching
set smartcase                " when searching try to be smart about case
set incsearch                " enable incremental searching
set nostartofline            " prevent cursor from changing cols when jumping lines
set ruler                    " show cursor position in status bar
set mouse=                   " mouse disabled, allows copy+paste
set laststatus=2             " always show filename, used by vim-airline
set noerrorbells             " disable annoying error chime
set wildmenu                 " auto completion, e.g. :color <TAB>
set backspace=2              " delete over line breaks (if not default)
set timeoutlen=50            " time in ms waited for key code/key sequence

filetype plugin indent on    " enable build in filetype indentation

  " change settings when using python
" autocmd FileType python setlocal sw=4 ts=4 sts=4

  " turn on spell checking in .txt, .md, and README files
autocmd BufNewFile,BufRead *.txt,*.md,README, setlocal spell spelllang=en_us

  " highlight kernel types
syn keyword cType uint ubyte ulong uint64_t uint32_t uint16_t uint8_t boolean_t int64_t
syn keyword cType int32_t int16_t int8_t u_int64_t u_int32_t u_int16_t u_int8_t
    " kernel macro for branch prediction
syn keyword cOperator likely unlikely

  " highlights chars in line over 80 chars long
highlight OverLength ctermbg=red guibg=red
call matchadd('OverLength', '\%>80v.\+')

  " highlight trailing white space
highlight ExtraWhitespace ctermbg=red guibg=red
call matchadd('ExtraWhitespace', '\s\+$')
