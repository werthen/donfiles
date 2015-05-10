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
Plugin 'ervandew/supertab'

" Bling
Plugin 'bling/vim-airline'

" Syntax Highlighting
Plugin 'scrooloose/syntastic'
Plugin 'baskerville/vim-sxhkdrc'
Plugin 'Donvittorio/oz.vim'

" Latex
"Plugin 'matze/vim-tex-fold'
Plugin 'LaTeX-Box-Team/LaTeX-Box'

" Stuff
Plugin 'scrooloose/nerdtree'

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
let g:syntastic_cpp_check_header = 1
let g:syntastic_java_javac_config_file_enabled = 1
let g:airline_powerline_fonts=1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" LaTeX
let g:LatexBox_Folding = 1

set mouse=a
set smartindent
set laststatus=2
set tabstop=4
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
set shiftwidth=4
set expandtab
set nu
syntax on
set t_Co=256
"highlight Normal ctermbg=none
colorscheme Tomorrow-Night

"Trailing whitespace as dots
set list
set listchars=tab:\ \ ,trail:·

"Get rid of scratchpad
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

"Write with sudo rights
cmap w!! w !sudo tee % > /dev/null

"Word Processing mode
func! WordProcessorMode() 
  setlocal formatoptions=1
  setlocal noexpandtab
  map j gj
  map k gk
  setlocal spell spelllang=nl
  set complete+=s
  set formatprg=par
  setlocal wrap
  setlocal linebreak
endfu
com! WP call WordProcessorMode()

"Automatic latex compiling
au BufWritePost *.tex silent :Latexmk
au BufRead *.tex WP

nnoremap <leader>lt :LatexTOCToggle<CR>
nnoremap <leader>lv :LatexView<CR>
nnoremap <space> za
