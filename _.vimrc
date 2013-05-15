syntax on
filetype indent plugin on   " auto detect filetype

" colorscheme Molokai
colorscheme Solarized
set background=dark

set number                  " show line numbers
set softtabstop=4           " let backspace delete indent
set expandtab               " tabs are spaces, not tabs
set shiftwidth=4            " use indents of 4 spaces
set guifont=Monaco:h12
set smartindent
set autoindent
set foldenable
set scrolloff=2             " keep at least 2 lines above/bellow cursor
set splitbelow              " split next to current view
set hlsearch                " highlight search terms
set mouse=a                 " enable mouse support 
set ruler                   " show current cursor position
set nocompatible            " better to have it
set nostartofline
set autoread                " auto read when file changed from outside
set confirm
set incsearch               " highlight search as you type
set cursorline              " highlight current line
"set nowrap                 " no return on long lines
set virtualedit=onemore     " allow for cursor beyond last character
set history=1000            " default history is 20
set showcmd                 " show partial commands in status line
set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
set backspace=indent,eol,start  " make that backspace key work the way it should

"Autocompletion
set wildmode=list:longest
set omnifunc=csscomplete#CompleteCSS

"CoffeeScript config
hi link coffeeSpaceError NONE
hi link coffeeSemicolonError NONE
hi link coffeeReservedError NONE

"Shortcups
nmap <space> :
nmap <F6> :NERDTreeToggle<cr>

"Change working directory to the one of the current file
cmap cwd lcd %:p:h

"TextMate shortcut to move tab next and tab previous
nnoremap <C-A-Left> :tabprevious<CR>
nnoremap <C-A-Right> :tabnext<CR>

"Automtically change current directory to the one in the buffer one
"autocmd BufEnter * cd %:p:h

"Source .vimrc just after saving it
if has("autocmd")
    autocmd bufwritepost .vimrc source ~/.vimrc
endif

"Custom mapleader instead of the default \
let mapleader=","

"NERDTree
let NERDTreeShowHidden=1 
let NERDTreeShowBookmarks=0
let NERDTreeIgnore=['\.DS_Store$','\.swp$']
"au VimEnter * NERDTreeFind "open nerdtree in the same directory as the current buffer

"if exists("loaded_nerd_tree")
"    autocmd VimEnter * NERDTree
"endif

