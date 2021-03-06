set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/easymotion/vim-easymotion.git'
Plugin 'https://github.com/ivanov/vim-ipython'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'https://github.com/djoshea/vim-autoread'
Plugin 'https://github.com/lumiliet/vim-twig'
Plugin 'https://github.com/vim-scripts/Txtfmt-The-Vim-Highlighter'
Plugin 'vimwiki/vimwiki'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set clipboard=unnamedplus

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

filetype indent on

" post by cdated https://stackoverflow.com/questions/2561418/how-to-comment-out-a-block-of-python-code-in-vim
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>


let g:EasyMotion_do_mapping = 1 " Disable/Enable default mappings

map <Space> H<Plug>(easymotion-w)

" changes jump keys
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz,'

" autosave (post by Sameer https://stackoverflow.com/questions/6991638/how-to-auto-save-a-file-every-1-second-in-vim)
autocmd TextChanged,TextChangedI <buffer> silent write

colorscheme ron

" post by ying17zi https://stackoverflow.com/questions/6778961/alt-key-shortcuts-not-working-on-gnome-terminal-with-vim
" Alt-j/k to add a blank line
if has('gui_running')
    " the following two lines do not work in vim, but work in Gvim
    nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
    nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
else
    " these two work in vim
    " shrtcut with alt key: press Ctrl-v then Alt-k
    " ATTENTION: the following two lines should not be 
    " edited under other editors like gedit. ^[k and ^[j will be broken!
    nnoremap k :set paste<CR>m`O<Esc>``:set nopaste<CR>
    nnoremap j :set paste<CR>m`o<Esc>``:set nopaste<CR>
endif

map <C-n> :NERDTreeToggle<CR>

set noswapfile

" Remove delay 
set timeoutlen=1000 

" Highlight search matches
set hls

" Spell checking
map <F7>  :setlocal spell spelllang=en <return>
map <F8>  :setlocal spell spelllang=de <return>

" Insert date with F3
" https://stackoverflow.com/questions/56052/best-way-to-insert-timestamp-in-vim
nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p ")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p ")<CR>

" Zeige Zeilennummern an
set nu
"" Scroll with space
"map <Space> 
"map <S-Space> 

"ermöglicht zoomen mit STRG++ und STRG-- für vim
set guicursor=
