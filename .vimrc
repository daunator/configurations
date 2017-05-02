" Set dark because guake is not set like this
set background=dark

set showcmd                  "Show the current command
set number                   "Activate line numbers

set showmatch                "The cursor will briefly jump to the matching brace
set matchtime=3

set textwidth=80             "Make it obvious where 80 characters is
set colorcolumn=+1

set autochdir                "Automatically change the current directory

" makes it super easy to install plugins and runtime files in their own
" private directories
execute pathogen#infect()
filetype plugin indent on
syntax on

"----------------Visuals----------------
"set t_CO=256
"colorscheme atom-dark "commented because no diff from default


"------------Tab Management-------------
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
" Make indent multiple of tabsize
set shiftround
" Display extra whitespace
set list listchars=tab:»·,trail:·


"----------------Search-----------------
set hlsearch                      "Highlight searched term


"-----------Split Management------------
set splitbelow
set splitright

nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>


"---------------Mappings----------------
" Get off my lawn
nnoremap <Left> :echoe "Use h"<cr>
nnoremap <Right> :echoe "Use l"<cr>
nnoremap <Up> :echoe "Use k"<cr>
nnoremap <Down> :echoe "Use j"<cr>

" Make it easy to edit the .vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

" Quick save on /s
noremap <Leader>s :update<CR>

" Add jj as Esc alternative
imap jj <ESC>

" Invoke make directly on F7
nnoremap <silent> <f7> :make<cr>

" Run on F5
nnoremap <silent> <f5> :!./%<<cr>
"--------------Autocommands-------------
" Automaticaly source .vimrc on save
augroup autosourcing
     autocmd!
     autocmd BufWritePost .vimrc source %
augroup END
