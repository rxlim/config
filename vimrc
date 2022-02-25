unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
filetype on
filetype plugin on
filetype indent on
set shiftwidth=4
set softtabstop=4
set expandtab
set autochdir
set number
syntax on
set title
set nocompatible
set cindent
set cino+=(0
set cino+=W4
set cino+=l1
set cino+=j1
set cino+=g0
set cino+=t0
"set cino+=+0
set cino+=m1

" Javascript
set cino+=J1

set hlsearch
set laststatus=2

set keywordprg=:Man
runtime ftplugin/man.vim

nmap § :e#<cr> 
nmap <TAB> gt
nmap <S-TAB> gT
nmap <C-T> :tabnew<cr>
nmap <C-K> mA :exe "bufdo %s///ge \| up" \| :exe "'A" \| :norm zz<c-b><s-right><s-right><s-right><left><left><left>
nmap <F8> :silent make \| redraw!<cr>
nmap <F9> :silent make -C .. \| redraw!<cr>

autocmd FileType vue,javascript,typescript,c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e
let g:powerline_pycmd="py3"
set laststatus=2
set wildmode=longest:full,full

autocmd FileType c,cpp set colorcolumn=79

let &makeprg = 'make -j'.(system('grep -c ^processor /proc/cpuinfo')+1)

set background=dark
colorscheme simple-dark
