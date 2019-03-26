"set statusline=Current:\ %-4l\ Total:\ %-4L\ Percentage:\ %P
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
"set backspace=indent,eol,start
set spelllang=en_gb
set smartindent
" Help with search
set hls
set incsearch
set ignorecase
set smartcase
" Disable backup and swap files
set nobackup
set nowritebackup
"set noswapfile

"indentention, when tabbing its a space
set autoindent
set cindent
set shiftwidth=4
set softtabstop=4
set expandtab
set number

set nocompatible              " be iMproved, required
set showcmd

set undodir=~/.vim/vimundo
set undofile
set undolevels=10000

"Jump to the last positon when reopening a file
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

"Show statusline always
set laststatus=2
set nowrap
syntax enable
"filetype off

"*****For Latex
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
"set grepprg=grep\ -nH\ $*

"latex
filetype indent on

filetype plugin on                  " required



" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
" Python
Plugin 'davidhalter/jedi-vim'
" Open and close pairs
Plugin 'jiangmiao/auto-pairs'
" Read about it
"Plugin 'scrooloose/nerdtree.git'
" Syntax error alert
Plugin 'scrooloose/syntastic'
" check python errors
"Plugin 'nvie/vim-flake8'
Plugin 'Buffergator'
" Html5
Plugin 'othree/html5.vim'
"sound a text
Plugin 'tpope/vim-surround'

"Formating text
"Plugin 'LaTeX-Box-Team/LaTeX-Box'
"Plugin 'vimlatex'
"Both snippets needed to work
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets' 
"Help correct auto-indentation with python
Plugin 'vim-scripts/indentpython.vim'
"Need to go to the site and install 
"stand alone software
"Plugin 'LanguageTool'
Plugin 'rstacruz/sparkup'
"HTML
Plugin 'tristen/vim-sparkup'
"Navigate between tmux and vim
Plugin 'christoomey/vim-tmux-navigator'
"let g:jedi#force_py_version=3
"XML pluging works
"Plugin 'sukima/xmledit'

"php plugin
Plugin 'shawncplus/phpcomplete.vim'

Plugin 'rdnetto/YCM-Generator'
Plugin 'stanangeloff/php.vim'

"Pluggins for php auto-completion
Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'
Plugin 'm2mdas/phpcomplete-extended'

"JavaScript plugin
Plugin 'pangloss/vim-javascript'

"c/c++ plugin
Plugin 'c.vim'

"completion for c/c++
Plugin 'rip-rip/clang_complete'

Plugin 'valloric/youcompleteme'

"Latex
Plugin 'gerw/vim-latex-suite'
"view latex pdf

"Latex preview
Plugin 'alxhnr/latex_preview'

"autocmd FileType tex setl updatetime=1

"nmap <F12> :LLPStartPreview<cr>


let g:Tex_CustomTemplateFolder = "$HOME/ftplugin/latex-suite/templates/"

"Expand UltiSnip snipets
let g:UltiSnipsExpandTrigger="<c-b>"

"let g:UltiSnipsEditSplit="vertical"

"prevent defualt conflit between ultisnips and YCM
let g:ymc_key_list_select_completion=[]
let g:ymc_key_list_previous_completion=[]

"set omnifunc=phpcomplete#CompletePHP
"autocmd  FileType  php set omnifunc=phpcomplete#CompletePHP
set omnifunc=syntaxcomplete#Complete
set completefunc=ClangComplete

"path to directory where clang library can be found
let g:clang_library_path='/usr/lib/llvm-3.8/lib'

"change sparkup command
let g:sparkupExecuteMapping="<c-b>"

let g:syntastic_python_python_exec = '/usr/bin/python3'
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

"enable the tools for cmake or doxygen c/c++
let g:C_UseTool_cmake ='yes'
let g:C_UseTool_doxygen ='yes'

"auto close latex tag
"let g:LatexBox_completion_close_braces = 1 

"mape space key to (control-x, control-o)
inoremap <C-@> <c-x><c-o>
" Easier movements beween panes
map <c-j> <c-w><c-j>
map <c-k> <c-w><c-k>
map <c-h> <c-w><c-h>
map <c-t> <c-w><c-l>

" Unmap arro keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

" Clipboard yank and paste
"noremap <Leader>y "*y
"noremap <Leader>p "*p
"noremap <Leader>Y "+y
"noremap <Leader>P "+p

"Avoid Ex Mode
"noremap Q <nop>

"Put at the very end of your .vimrc file
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

"Keep 3 lines below and above the cursor
set scrolloff=5


