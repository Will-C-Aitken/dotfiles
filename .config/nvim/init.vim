if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
   silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Tabstops
set softtabstop=4
set shiftwidth=4

" Text wrapping
set textwidth=79

" Hybrid line numbers
set relativenumber
set number

" Tex Specific
autocmd FileType tex setlocal spell spelllang=en_ca

" Mail Specific
autocmd BufRead /tmp/neomutt-* setlocal spell spelllang=en_ca

" Plugins
call plug#begin(stdpath('data').'/plugged')

" LaTeX
Plug 'lervag/vimtex'
let g:tex_flavor = 'latex'
let g:latex_indent_enabled = 0
let g:vimtex_compiler_latekmk = {'build_dir' : 'build'}

" Nord Theme
Plug 'arcticicestudio/nord-vim'

call plug#end()

colorscheme nord
