set nocompatible
"set runtimepath=~/.vim/
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Required by Vundle
Plugin 'gmarik/Vundle.vim'

" Completion
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'honza/vim-snippets'

" Bling
Plugin 'bling/vim-airline'

" Syntax Highlighting
Plugin 'scrooloose/syntastic'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'tpope/vim-rails'
Plugin 'wting/rust.vim'
Plugin 'baskerville/vim-sxhkdrc'
Plugin 'Procrat/oz.vim'

" Stuff
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()
filetype plugin indent on

" Sync pastebuffers
if has ('unnamedplus')
set clipboard=unnamedplus
else
set clipboard=unnamed
end

" Map Leader
let mapleader=','
let maplocalleader=','

" Various settings
let g:syntastic_c_check_header = 1
let g:syntastic_java_javac_config_file_enabled = 1
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:airline_powerline_fonts=1

set smartindent
set laststatus=2
set tabstop=4
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
set shiftwidth=4
set expandtab
set nu
syntax on
set t_Co=256
colorscheme molokai
highlight Normal ctermbg=none

"Trailing whitespace as dots
set list
set listchars=tab:\ \ ,trail:·

"Get rid of scratchpad
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

"Write with sudo rights
cmap w!! w !sudo tee % > /dev/null
