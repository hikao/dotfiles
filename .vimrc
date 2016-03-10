"###neobundle setteings
set nocompatible               " Be iMproved

"###表示設定###
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=2 "tabをスペース2つ分に設定
set smartindent "オートインデント
set shiftwidth=2 "インデントを2つに設定
set expandtab  "ソフトタブを有効にする(タブの代わりにスペースになる)
set cursorline "行を強調表示
"set cursorcolumn "列を強調表示

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set cmdheight=2

"####カーソル移動####
set whichwrap=b,s,<,>,[,],h,l

"####mapping####
nmap <silent> <C-E> :NERDTreeToggle<CR>

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

if !exists('loaded_matchit')
    runtime macros/matchit.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'FuzzyFinder'
NeoBundle 'L9'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Lokaltog/powerline'
NeoBundle 'taichouchou2/alpaca_powertabline'
NeoBundle 'vim-scripts/grep.vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'todesking/ruby_hl_lvar.vim'
NeoBundle 'pocke/dicts'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'matchit.zip'

call neobundle#end()

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

 " Installation check.
NeoBundleCheck

"#Neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
"power line settings
set laststatus=2

" ruby_hl_lvar settings
" Highligt group name for local variable
" Default: 'Identifier'
let g:ruby_hl_lvar_hl_group = 'RubyLocalVariable'
" Auto enable and refresh highlight when text is changed. Useful but bit slow.
" Default: 1
let g:ruby_hl_lvar_auto_enable = 0
" If you wish to control the plugin manually, map these functions.
nmap <leader>he <Plug>(ruby_hl_lvar-enable)
nmap <leader>hd <Plug>(ruby_hl_lvar-disable)
nmap <leader>hr <Plug>(ruby_hl_lvar-refresh)

" Neobundleinstall not using git:// but https://
let g:neobundle#types#git#default_protocol = 'https'
