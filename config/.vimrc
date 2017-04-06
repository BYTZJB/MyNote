"set runtimepath^=~/.vim/bundle/vim-erlang-compiler
"set runtimepath^=~/.vim/bundle/vim-erlang-runtime/

syntax on
runtime colors/molokai.vim
set mouse=a
set number

set shiftwidth=4 
set ts=4
set expandtab
set autoindent
set foldmethod=indent
syntax enable
syntax on

"
"


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Erlang's plugins
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
"Plugin 'jimenezrick/vimerl'

" nerdTree
Plugin 'scrooloose/nerdtree'

" syntax
Plugin 'vim-syntastic/syntastic'

" Conque-Shell
Plugin 'vim-scripts/Conque-Shell'

Plugin 'skywind3000/asyncrun.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-airline/vim-airline'

Plugin 'kien/ctrlp.vim'

Plugin 'mileszs/ack.vim'

Plugin 'majutsushi/tagbar'

Plugin 'aperezdc/vim-template'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ycm_filetype_blacklist = {
        \ 'tagbar' : 1
        \}

"Plugin Conque

let g:ConqueTerm_PyVersion = 3

"Plugin vim-erlang-compiler
let g:erlang_make_options_rules =
              \ [{'*.erl': '~/Test/ProjectErlang01',
              \   'options':
              \     ' --outdir ../ebin --xref' .
              \     ' --copy ~/Test/ProjectErlang01/rel'},
              \ {'*.erl': '~/Test/ExerciseOfErlang',
              \  'options':
              \     ' --outdir ../ebin --xref' .
              \     ' --copy ~/Test/ExerciseOfErlang/rel'}, 
              \ {'path_re': '~/BYTZJB/MyNote/SomeTestCode',
              \   'options':
              \     ' --outdir ebin --xref' .
              \     ' --copy ebin'}]

"YouCompleteMe
let g:ycm_filetype_blacklist = {
    \ }
let g:ycm_complete_in_comments = 1
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_server_use_vim_stdout = 0
let g:ycm_cache_omnifunc = 0



"Plugin vimerl
:let erlang_folding = 1
:let erlang_skel_header = {
            \ "author": "Yang Wei",
            \ "owner" : "Fubar",
            \"year"  : "2000"}
:let erlang_force_use_vimerl_indent = 1
:let erlang_skel_dir = "~/Test/ExerciseOfErlang/src"


