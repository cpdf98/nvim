nnoremap<silent><A-i> :FloatermToggle<CR>
tnoremap<silent><A-i> <C-\><C-n>:FloatermToggle<CR>

hi FloatermBorder guibg=#151515

autocmd FileType java nnoremap <buffer> <F5> :w<esc>:FloatermNew javac % && java %<CR>
autocmd FileType c nnoremap <buffer> <F5> :w<esc>:FloatermNew gcc % && ./a.out && rm a.out<CR>
autocmd FileType cpp nnoremap <buffer> <F5> :w<esc>:FloatermNew g++ % && ./a.out && rm a.out<CR>
autocmd FileType python nnoremap <buffer> <F5> :w<esc>:FloatermNew python3 %<CR>
autocmd FileType cs nnoremap <buffer> <F5> :w<esc>:FloatermNew mcs %<CR>

let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_autoclose = 0
