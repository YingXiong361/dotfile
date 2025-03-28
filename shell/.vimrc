" Plugin Management (Vundle)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf.vim'        " FZF integration
Plugin 'preservim/nerdtree'      " File explorer
Plugin 'tpope/vim-commentary'     " Code commenting
call vundle#end()

" Basic Enhancements
set number relativenumber        " Hybrid line numbers
set tabstop=2 shiftwidth=2 expandtab
syntax on
set clipboard=unnamedplus         " System clipboard [20](@ref)
