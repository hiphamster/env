set number
syn on

set modeline

set ai                " auto indent
set nottybuiltin
set nocompatible

set backspace=2		    " backspace can join lines

set smarttab		      " <Tab> at start of line tabs <shiftwidth> chars
set ruler		          " show cursor position

" The following eats gcc and SGI cc/CC
set writebackup		    " keep a backup copy during the edit session

"set digraph		      " Enter ISO-8869-1 umlauts on US keyboards!
set incsearch		      " Incremental search.
set complete=.,w,b,u,t,i
set expandtab
set shiftwidth=2
set tabstop=2

"always show the status line
set laststatus=2
set statusline=%1*[%Y]%F\%(\ %m%r%H%)%=%3P<%l,%c>
" set statusline=%<%f\ %y\ %h%m%r%=%-14.(%l,%c%V%)\ %P

"set hlsearch         " highlight search matches
set joinspaces		    " Join adds two spaces after a period.
filetype plugin on	  " plugins are enabled

" Let K ask man for the word under the cursor 
set keywordprg=man\ -s 

set showmatch

"   showcmd:          Show current uncompleted command?  
set showcmd

"   showmatch:        Show the matching bracket for the last ')'?
set showmatch

"   showmode:         Show the current mode?  
set showmode

" enable spell checking
" this enables "STRANGE" highlighting - all misspelled words are highlighted 
setlocal spell spelllang=en_us
set spellfile=~/.spellfile.utf8.add
" disable for now
set nospell

" testing
" zyw - puts word under the cursor into a named register, in this case 'z'
" to recall it use @z, can do zyW instead of zyw, see diff between 'word' 
" and WORD; the command below will put a word under the cursor into z reg,
" will open new tab and use that word a filename 
map <C-t> "zyw:exe "tabe ".@z.""<CR>

" -----------------------------------------------------------------------------
" THIS REQUIRES TMUX!!!! 
" -----------------------------------------------------------------------------
" Run perldoc on a word under cursor, and display
" it in a new pane, at the bottom of the screen
" todo: need to add if/else block to only set this if i'm inside tmux
map <C-j> "zyw:exe "silent !tmux split-window -l 10 'perldoc -f'".@z.""<CR>

" same as above for man
map <C-k> "zyw:exe "silent !tmux split-window -l 10 'man '".@z.""<CR>

" same as above for python
map <C-l> "zyw:exe "silent !tmux split-window -l 10 'pydoc '".@z.""<CR>

" same as above for a new shell, still not sure about the number of "
map <C-p> "i:exe "silent !tmux split-window -l 10 'bash '"<CR>
" -----------------------------------------------------------------------------


" this is annoying 
" autocmd! BufWritePost *.js JSHint

:if $VIM_CRONTAB == "true"
:set nobackup
:set nowritebackup 
:endif


" -----------------------------------------------------------------------------
" VUNDLE https://github.com/gmarik/Vundle.vim
" -----------------------------------------------------------------------------

" set nocompatible              " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 Bundle 'gmarik/vundle'

 " original repos on github
 Bundle 'tpope/vim-fugitive'

 Bundle 'Lokaltog/vim-easymotion'

 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

 Bundle 'tpope/vim-rails.git'

 " sets 'path' in vim to match CLASSPATH for jvm langs
 Bundle 'tpope/vim-classpath'

 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'

 " non github repos
 " FYI - 
 " cd ~/.vim/bundle/command-t && make 
 " cd ~/.vim/bundle/command-t/ruby/command-t && make 
 Bundle 'wincent/command-t'

 " git repos on your local machine (ie. when working on your own plugin)
 "Bundle 'file:///Users/gmarik/path/to/plugin'
 " 
 Bundle 'breeze.vim'

 " nerdtree
Bundle 'scrooloose/nerdtree'

 "Clojure
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-leiningen'
" -----------------------------------------------------------------------------

 syntax on
 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 "

" syntastic
let g:syntastic_enable_perl_checker = 0

" enable flake8 (flake8 uses pep8)
" let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_checkers = ['pylint']

" python
" E111 - not a multiple of four
" W291 - trailing whitespace
let g:syntastic_python_flake8_post_args='--ignore=W291'

" disable lint checks for python-mode
let g:pymode_lint_write = 1

" enable automatic syntax checking for python
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['ruby','python'] }

" vim events
" autocmd  EventName  filename_pattern   :command
" to get a list of all events do: 
" help autocmd-events 
autocmd FileType python :set tabstop=4
autocmd FileType python :set shiftwidth=4
autocmd FileType perl   :set tabstop=2
autocmd FileType perl   :set shiftwidth=2
