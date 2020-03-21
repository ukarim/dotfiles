
set nocompatible

" enable line numbers
set number

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'dracula/vim', { 'name': 'dracula' }

call vundle#end()

" tabs on top with buffer names
let g:airline#extensions#tabline#enabled = 1

" enable dark gruvbox theme
colorscheme dracula

filetype plugin indent on

" cycle buffers
nnoremap <C-n> :bnext<CR>

" close current buffer
nnoremap <C-w> :bd<CR>

" undo
nnoremap <C-z> :undo<CR>



