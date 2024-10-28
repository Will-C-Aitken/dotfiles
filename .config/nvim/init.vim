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


" For Budgurse unit test
autocmd Bufread,BufNewFile */budgurse/test/*.c let @i = ':,€kb.,$/€kbg/num_nodes€kb€kb€kb€kb€kb€kb€kb€kb€kbtest_nodes€kb€kb€kb€kb€kb€kb€kb€kb€kb€kbentry_€kb€kb€kb€kb€kb€kb*€kb.*mu_aser€kb€kbsert/norm€ku€kd $F w'

" For JSON survey data
autocmd BufRead survey.json setlocal spell spelllang=en_ca

" Insert paper template
autocmd BufRead survey.json let @p = 'A,{"number" : ,"title €kb" : ,€kb"",:lin€kb€kb€kb€kb:l€kb€kb"link" : "","affiliations" : [],"a€kbtype" : "","re-ran_results"€kb:€kb?" ,"dr€kbkjbbhi "€kb"€kb:jbbbwjcwdatasets" [],Okwwi: jjjkkddo €kb"basemodel" : {€kb,"€kb"humans" : ,"signficance"€kb€kb€kb€kb€kb€kb€kb€kbificance" : ,"code" : ,€kb€kb}kkkkkkkkkkkkkkkjwwwwlljjjjjjjjjwwi{€kb€kb€kb€kb€kb€kb[€kb]€kb€kb€kb€kb€kb €kb{"Name"€kb€kb€kb€kb€kbname" :"link€kb€kb€kb€kblink:€kb" :"affiliationskkA ""jkA,jA "",jlli" : []lxo}],kkkkkkkkk:tabe €kb€kb€kb€kb€kb€kbkjo{"name" : "","link" : :€kb"","affiliations" : []m€kb,"metrics" : [{"name" : "","split" : "","prior_nest"€kb€kb€kb€kb€kbbest+€kb",€kb :{€kb	{"name" : "","link" : "","affiliations" "€kb: [],€kb},€kb"new_best" : "",:€kb"il€kb€kbold_score" : €kb ,"noew_s€kb€kb€kb€kb€kbew_score" : ,"higher_is_better" ,€kb€kb€kb€kb€kb€kb€kb€kb€kb:€kb€kb€kb€kb€kb€kb€kb€kb ,:€kb"cope€kbied_old_so€kbcore" : €kb},x€kb€kb]}],jjjjkkkddkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkwwwww'

" Insert datasets template
autocmd bufRead survey.json let @d = 'A,{"name" : ::€kb€kb"",:€kb"link" "€kb: "","metrics" []\\€kb€kb,€kb€kbi: A{:na€kb€kb€kb"name" : a€kb"",:€kb"prior_best""€kb : ,€kb	:€kb{"name" : "","affia€kbliations" €kb: €kb€kb : []"link" : ""kA,jao€kb"€kb},:€kb"€kb€kb"old_score" : ,:no€kb€kb€kb"new_score",€kb : ,"higher_is_better" : €kb€kb}]}16k$hjo"affiliations:€kb" : [],jjjo"split" : "",jjjjddpkA,j$xjjjjjjjjjjjjjjjkkkkkkkkkkkkkkjO"€kb€kb"new)€kb_best" : "",jjjA ,"copied_old_score" :kkkkkkkkkkkkkkkkkh'

" Insert metric template
autocmd BufRead survey.json let @m = 'A,{"name" : "","split" : "","prior_best" :	{"name" : "",:€kb:€kb"link":€kb : "","afiliations" €kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kbfiliations "€kb€kb" : "€kb[],€kb}€kb"new_best" : "","old_scorekka,jjA" : ,"new_score" : ,"copied_old_score" : ,ko"hug€kb€kbigher_is_better" :,€kb ,jxjko€kb}kkkkkkkkkkkkkwwwwwwbl'

" Insert basemodel template
autocmd BufRead survey.json let @b = 'a,{"name" : "","link" : "","affiliations" " €kb€kb: []}kkkkwwwwlll'

" Format affiliations
autocmd BufRead *survey.json let @a = ':s/[€kb\([Ai€kb-Z]\)/"\q"€kb€kb1", /ge:s/, ]"/], "/ge:s/, ]/]/ge:s/\]\[/], [/gej$F"'

" Copy previous block
autocmd BufRead *survey.json let @c = 'V%y%pka,jjk'

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
