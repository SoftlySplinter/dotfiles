" Remove one common keypress
map ; :

" General options
set laststatus=2
set encoding=utf8
set textwidth=79

" Spelling
au FileType markdown setlocal spell spelllang=en_gb
au FileType rst setlocal spell spelllang=en_gb
au FileType tex setlocal spell spelllang=en_gb

" Compiling
au FileType tex setlocal mp=pdflatex\ %\ \&\&\ pdflatex\ %
au FileType python setlocal mp=python\ %

" Program Function key commands
"" PF2 - Line Numbers
nnoremap <F2> :set nu!<CR>
"" PF5 - Compile
map <F5> :make<CR><C-w><Up>
imap <F5> <Esc>:make<CR><C-w><Up>i
"" PF9 - View files
au FileType tex map <F9> :exec "!evince %:r.pdf &"<CR>
au FileType html map <F9> :exec "chromium-browser %"<CR>
"" PF11 - Paste toggle
set pastetoggle=<F11>
"" PF17 - Compile with extra options (e.g. pdflatex with bibtex)
au FileType tex map <S-F5> :exec "!pdflatex %:r && bibtex %:r && pdflatex %:r && pdflatex %:r"<CR>
au FileType tex imap <S-F5> <Esc>write<CR>:exec "!pdflatex %:r && bibtex %:r && pdflatex %:r && pdflatex %:r"<CR>i

" Colour Scheme
set background=light
colorscheme solarized

" Filetypes and highlighting
syntax enable
:autocmd BufNewFile,BufRead *.arff set ft=arff
:autocmd BufNewFile,BufRead *.md set ft=markdown
:autocmd BufNewFile,BufRead *.mustache set ft=mustache
:autocmd BufNewFile,BufRead *.scala set ft=scala
:autocmd BufNewFile,BufRead *.slim set ft=slim
:autocmd BufNewFile,BufRead *.go set ft=go

"" Hilight long lines (>80)
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%80v.\+/

"save a file as root. Use :w!! and vim will ask you for your password
ca w!! w !sudo tee >/dev/null "%"

" Navigation like firefox
nnoremap <C-PageDown> :tabprevious<CR>
nnoremap <C-PageUp>   :tabnext<CR>
nnoremap <C-t>        :tabnew<CR>
inoremap <C-PageDown> <Esc>:tabprevious<CR>i
inoremap <C-PageUp>   <Esc>:tabnext<CR>i
inoremap <C-t>        <Esc>:tabnew<CR>
