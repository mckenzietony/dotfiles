call plug#begin()
" darcula theme
Plug 'dracula/vim'
" airline fonts and shizzy give cool unicode iconds and status bars
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" git wrapper
Plug 'tpope/vim-fugitive'
" 'sensible' default bindings and settings for vim
" stuff like auto file reload, progressive search, list formatting display
Plug 'tpope/vim-sensible'
" Allows doc navigation for vim-sensible, possibly more
Plug 'tpope/vim-scriptease'
" Changes surroundings ex cs"' will replace double quotes with single in
" selection/line.  can also add + delete
Plug 'tpope/vim-surround'


" enables ctags, a way to show metadata on files we're editing
Plug 'majutsushi/tagbar'
" :NERDTree shows file system hierarchy
Plug 'scrooloose/nerdtree'
" code commenting.  default leader is \.
" use \ci to invert, \cs pretty comment, \cA insert comment at EOL, \c$
" comment to EOL, etc
Plug 'scrooloose/nerdcommenter'
" Plug 'tpope/vim-commentary'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-jedi'
" ConquerOfCompletion is the shit.  uses ms vscode language runtime backends
" for autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" coc-tsscript coc-python coc-java coc-kotlin coc-rust coc-scala

" Shows tab indentions (vert line at alignment)
Plug 'Yggdroot/indentLine'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

" literally tab completion see :help ins-completion
Plug 'ervandew/supertab'
" Auto pairs '',[],"",{},``,'',() (but not gtlt? maybe file dependent or
" superseded by vim-closetag)
Plug 'jiangmiao/auto-pairs'
" gaip -> turns to interactive, then use matcherchar2 to align to char2 by
" matchefr (*,+, etc)
Plug 'junegunn/vim-easy-align'
" Mostly for webdev, handles <>
Plug 'alvan/vim-closetag'

" I sincerely hate how this hides delimiter syntax in json and readme
" honestly may conflict with coc, trying to turn it off
" syntax highlighter
" Plug 'sheerun/vim-polyglot'

" Python formatter + linter
Plug 'psf/black'

call plug#end()


"syntax on
color dracula
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none


" Opaque Background (Comment out to use terminal's profile)
set termguicolors

" Transparent Background (For i3 and compton)
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE


" nerdcommenter
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\
set wrap breakindent
set encoding=utf-8
set number
set title


" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
"let g:airline#extensions#tabline#enabled = 1

" Coc
let g:coc_global_extensions = ['coc-json','coc-git','coc-pyright','coc-kotlin','coc-java','coc-tsserver','coc-css','coc-html','coc-prettier','coc-cfn-lint','coc-fzf-preview','coc-graphql','coc-julia','coc-markdownlint','coc-rust-analyzer','coc-spell-checker','coc-yaml', 'coc-sh']

"set --with-x=yes mouse=a
" so finicky.  TL;DR hold SHIFT+middleclick or SHIFT+highlight to paste/copy
set mouse=a

" Deoplete
"let g:deoplete#enable_at_startup = 1

" show whitespace
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
"set list


" vim-polygot
" let g:polyglot_disabled = ['markdown', 'json']

let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" vim easy align
" " Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
