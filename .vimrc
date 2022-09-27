let g:gruvbox_contrast='hard'
set background=dark
colorscheme Gruvbox
"highlight Normal ctermfg=white ctermbg=black
syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set number relativenumber
set nowrap
set smartcase
set incsearch

set backspace=indent,eol,start


inoremap {<CR>  {<CR>}<Esc>O
inoremap {}     {}
map <C-c> :s/^/\/\//<Enter> 
map <C-u> :s/^\/\///<Enter>

"Append template to new C++ files
autocmd BufNewFile *.cpp 0r /Users/khushil/Documents/Templates/Competitive.cpp 

set timeoutlen=1000

set ttimeoutlen=0

autocmd vimEnter *.cpp map ` :w <CR> :!clear ; g++-12 --std=c++17 %;if [ -f a.out ]; then time ./a.out; rm a.out;fi <CR>
"autocmd vimEnter *.c map ` :w <CR> :!clear ; g++-12 --std=c++17 %;if [ -f a.out ]; then time ./a.out; rm a.out;fi <CR>
autocmd FileType python map <buffer> ` :w<CR>   :exec  '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> ` <esc>:w<CR>  :exec  '!python3' shellescape(@%, 1)<CR>
autocmd vimEnter *.java map ` :w <CR> :!clear ; javac %:t<CR> :! java %:t:r<CR>


"colorscheme spaceduck
"colorscheme Gruvbox

let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

"augroup myCmds
"au!
"autocmd VimEnter * silent !echo -ne "\e[2 q"
"augroup END

"hi Comment ctermfg=grey
