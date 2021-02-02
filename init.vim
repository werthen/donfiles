" Source the vimrc file after saving it
if has("autocmd")
    autocmd bufwritepost .nvimrc source $HOME/.config/nvim/init.vim
endif

set nu
syntax on
set autoindent
let mapleader= ","
set mouse=a

set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab

set clipboard^=unnamed,unnamedplus

" Move down lines when soft wrapping
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jiangmiao/auto-pairs'

" Async make
Plug 'tpope/vim-dispatch'

" Pandoc markdown
Plug 'vim-pandoc/vim-pandoc-syntax'

" A bunch of languages
Plug 'sheerun/vim-polyglot'

" Zen mode
Plug 'junegunn/goyo.vim'

" Aligning tables and such
Plug 'junegunn/vim-easy-align'

" Linting
Plug 'dense-analysis/ale'

" Onedark colorscheme
Plug 'joshdick/onedark.vim'

" Ledger lang plugin
Plug 'ledger/vim-ledger'

" Tree view
Plug 'preservim/nerdtree'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Python completion
Plug 'zchee/deoplete-jedi'

" Multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

" Easy making
map <f9> :Make!<CR>

" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

" Dont use concealing characters in pandoc vim
let g:pandoc#syntax#conceal#use = 0

" Enable NERDTree at startup if no files are selected
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd Filetype ledger setlocal ts=4 sw=4 expandtab

" Shortcut to align markdown tables
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

" Enable pandoc syntax for markdown files
augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'onedark'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" Keybindings

" Start NERDTree
map <C-t> :NERDTreeToggle<CR>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Find files using fzf
nnoremap <silent> <C-p> :Files<CR>

" Find lines in file using fzf
nnoremap <silent> <Leader>f :Rg<CR>
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)



"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE
