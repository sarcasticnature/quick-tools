set nocompatible
syntax on


"""""""""""""""""""" Settings from example vimrc's """"""""""""""""""""

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
"filetype indent on


" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd
  
" Highlight searches (use <C-L> to temporarily turn off highlighting; see
" the mapping of <C-L> below)
set hlsearch

" Usability options
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
"set ignorecase
"set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
"set nostartofline

 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
"set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell      " #possibleannoying
  
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
" set t_vb=
 
" Enable use of the mouse for all modes
set mouse=a	" #possibleannoying
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
"set cmdheight=2
 
" Display line numbers on the left
"set number
 
" Quickly time out on keycodes, but never time out on mappings
"set notimeout ttimeout ttimeoutlen=200
set ttimeoutlen=10

" Use <F11> to toggle between 'paste' and 'nopaste'
"set pastetoggle=<F11>

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
"nnoremap <C-L> :nohl<CR><C-L>

" highlight matching [{()}] (when your cursor moves over the opposing one)
set showmatch


"""""""""""""""""""" Jake Custom """"""""""""""""""""

" width of a hard tab is displayed as equivalent to 4
set tabstop=4
" indents have a width of 4
set shiftwidth=4
" sets the number of columns for a tab you insert when editing
set softtabstop=4
" expand tabs to spaces
set expandtab

" create a line at the 80th column 
set colorcolumn=80
highlight ColorColumn ctermbg=0

"let base16colorspace=256    " Access colors present in 256 colorspace
"set t_Co=256
colorscheme base16-gruvbox-dark-hard
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" show a few lines of context around the cursor
set scrolloff=3

" Show @@@ in the last line if it's truncated
"set display=truncate

" Prevent the default ftplugin settings from loading
"autocmd BufReadPre,BufNewFile * let b:did_ftplugin = 1

" Enable filetype plugin
"filetype indent plugin on

" Change cursor shape in different modes
" Cursor settings:
"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
let &t_SI = "\<Esc>[6 q"    "SI = INSERT mode
let &t_SR = "\<Esc>[4 q"    "SR = REPLACE mode
let &t_EI = "\<Esc>[2 q"    "EI = NORMAL mode (else)

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

