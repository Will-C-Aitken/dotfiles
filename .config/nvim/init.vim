if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
   silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Open help in new tab
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'

" Esc turns off search highlight
nnoremap <esc> :noh<return><esc>


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

" Markdown Specific
autocmd FileType markdown setlocal spell spelllang=en_ca


" For JSON survey data
autocmd BufRead survey.json let @p = 'A,{"number" : ,"title €kb" : ,€kb"",:lin€kb€kb€kb€kb:l€kb€kb"link" : "","affiliations" : [],"a€kbtype" : "","re-ran_results"€kb:€kb?" ,"dr€kbkjbbhi "€kb"€kb:jbbbwjcwdatasets" [],Okwwi: jjjkkddo €kb"basemodel" : {€kb,"€kb"humans" : ,"signficance"€kb€kb€kb€kb€kb€kb€kb€kbificance" : ,"code" : ,€kb€kb}kkkkkkkkkkkkkkkjwwwwll'

autocmd BufRead *survey.json let @t = 'A,{"name" : ::€kb€kb"",:€kb"link" "€kb: "","metrics" []\\€kb€kb,€kb€kbi: A{:na€kb€kb€kb"name" : a€kb"",:€kb"prior_best""€kb : ,€kb	:€kb{"name" : "","affia€kbliations" €kb: €kb€kb : []"link" : ""kA,jao€kb"€kb},:€kb"€kb€kb"old_score" : ,:no€kb€kb€kb"new_score",€kb : ,"higher_is_better" : €kb€kb}]}16k$h'

" Plugins
call plug#begin(stdpath('data').'/plugged')

" LaTeX
Plug 'lervag/vimtex'
let g:tex_flavor = 'latex'
let g:latex_indent_enabled = 0
let g:vimtex_compiler_latekmk = {'build_dir' : 'build'}
let g:vimtex_quickfix_ignore_filters = [ 'Underfull' ]

" Nord Theme
Plug 'arcticicestudio/nord-vim'

" Markdown
Plug 'preservim/vim-markdown'
let g:vim_markdown_folding_disabled = 1

call plug#end()

colorscheme nord
