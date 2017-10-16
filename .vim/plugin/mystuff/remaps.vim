" Treat long lines as break lines (useful when moving around in them)
noremap j gj
noremap k gk

" Fast scrolling up and down
noremap J 4j
noremap K 4k

" beginning/end of line movement
noremap H ^
noremap L $

" make v exit visual mode even when in visual block and visual line mode
xnoremap v <esc>

" make o concatenate lines (just because I don't have a better letter for it)
xnoremap o J
xnoremap <C-o> o

" Set jk to be escape in insert mode
inoremap jk <esc>
inoremap jK <esc>
inoremap Jk <esc>
inoremap JK <esc>


"delete without putting into buffer
noremap s "_
noremap x "_x


"replay macro then go to next line, map tilda because you can press tilda
"multiple times
noremap <Leader>l ^@qj^
noremap <Leader>a @q


"ctags stuffs
"map <Leader>j :rightb vsp <CR>:exec("tag ".expand("<cword>"))<CR>
"nmap <Leader>h :sp <CR>:exec("tag ".expand("<cword>"))<CR>
"nmap <Leader>s :exec("ts ".expand("<cword>"))<CR>
"nmap <Leader>] <C-]>

ca path echo expand('%:p')<CR>
ca genCtags !ctags `find .`<CR>
ca csh  ConqueTerm bash <CR>
