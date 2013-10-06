" General options
set laststatus=2
set encoding=utf8

" Spelling
au FileType markdown setlocal spell spelllang=en_gb
au FileType rst setlocal spell spelllang=en_gb
au FileType tex setlocal spell spelllang=en_gb

"" Program Function key commands
" PF2 - Line Numbers
nnoremap <F2> :set nu!<CR>
" PF5 - Compile
au FileType markdown map <F5> :exec "!pandoc --smart --standalone --table-of-content --mathml --from=markdown --to=html % --output=%.html"<CR>
au FileType python map <F5> :exec "python %"<CR>
au FileType tex map <F5> :exec "!pdflatex %:r"<CR>
" PF6 - Compile with extra options (e.g. pdflatex with bibtex)
au FileType tex map <F6> :exec "!pdflatex %:r && bibtex %:r && pdflatex %:r && pdflatex %:r"<CR>
" PF9 - View files
au FileType tex map <F9> :exec "!evince %:r.pdf &"<CR>
au FileType html map <F9> :exec "chromium-browser %"<CR>
" PF11 - Paste toggle
set pastetoggle=<F11>

"" Filetypes and highlighting
syntax on
:autocmd BufNewFile,BufRead *.arff set ft=arff
:autocmd BufNewFile,BufRead *.md set ft=markdown
:autocmd BufNewFile,BufRead *.mustache set ft=mustache
:autocmd BufNewFile,BufRead *.scala set ft=scala
:autocmd BufNewFile,BufRead *.slim set ft=slim
" Hilight long lines (>80)
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/
