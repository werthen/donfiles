set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nu
syntax on
set t_Co=256
colorscheme molokai
"colorscheme desert
highlight Normal ctermbg=none

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'honza/vim-snippets'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'wting/rust.vim'
Plugin 'r0nk/slow-vim'

let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

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
