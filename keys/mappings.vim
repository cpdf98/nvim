nnoremap <C-r> :NERDTreeToggle<CR>

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
nnoremap <C-c> :FloatermNew<CR>
nnoremap <C-l> :LazyGit<CR>
nnoremap <C-i> :w<CR>
nnoremap <C-h> :bd<CR>
nnoremap <F5> :so ~/.config/nvim/init.vim

autocmd FileType java nnoremap <buffer> <F5> :w<esc>:FloatermNew java %<CR>
autocmd FileType c nnoremap <buffer> <F5> :w<esc>:FloatermNew gcc % && ./a.out && rm a.out<CR>
autocmd FileType cpp nnoremap <buffer> <F5> :w<esc>:FloatermNew g++ % && ./a.out && rm a.out<CR>
autocmd FileType python nnoremap <buffer> <F5> :w<esc>:FloatermNew python3 %<CR>
autocmd FileType cs nnoremap <buffer> <F5> :w<esc>:FloatermNew mcs %<CR>

nmap h <Left>
nmap l <Right>
nmap j <Up>
nmap k <Down>
