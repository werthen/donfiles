set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Required by Vundle
Plugin 'gmarik/Vundle.vim'

Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'wting/rust.vim'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

" Sync pastebuffers {{{
  if has ('unnamedplus')
   set clipboard=unnamedplus
  else
   set clipboard=unnamed
  end
" }}}

let g:syntastic_c_check_header = 1
let g:syntastic_java_javac_config_file_enabled = 1
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:airline_powerline_fonts=1

set smartindent
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab
set nu
syntax on
set t_Co=256
colorscheme molokai
" colorscheme desert
" colorscheme peachpuff
highlight Normal ctermbg=none

"Trailing whitespace as dots
set list
set listchars=tab:\ \ ,trail:·

"Get rid of scratchpad
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
