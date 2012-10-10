syntax on
colorscheme Molokai
filetype indent plugin on
set number
set softtabstop=4
set expandtab
set shiftwidth=4
set guifont=Monaco:h12
set smartindent
set autoindent
set foldenable
set splitbelow
set hlsearch
set mouse=a
set ruler
"set cursorline
set nocompatible
set nostartofline
set confirm

"Autocompletion
"set wildmode=list:longest
set wildmenu
set omnifunc=csscomplete#CompleteCSS
au BufRead,BufNewFile *.scss set filetype=scss
"autocmd BufNewFile,BufRead *.scss             set ft=scss.css

"Load the current buffer in Firefox
abbrev ff :! open -a Firefox.app %:p<cr>
abbrev ch :! open -a Google\ Chrome.app %:p<cr> 
abbrev sf :! open -a Safari.app %:p<cr>
abbrev op :! open -a Opera.app %:p<cr>

"Shortcups
nmap <space> :
nmap <F6> :NERDTreeToggle<cr>

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
let NERDTreeShowBookmarks=1 
"au VimEnter * NERDTreeFind "open nerdtree in the same directory as the current buffer

"if exists("loaded_nerd_tree")
"    autocmd VimEnter * NERDTree
"endif

