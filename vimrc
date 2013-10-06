"" Spelling
au FileType markdown setlocal spell spelllang=en_gb
au FileType rst setlocal spell spelllang=en_gb
au FileType tex setlocal spell spelllang=en_gb

"" Function commands
au FileType markdown map <F5> :exec "!pandoc --smart --standalone --table-of-content --mathml --from=markdown --to=html % --output=%.html"<CR>
au FileType tex map <F5> :exec "!pdflatex %:r"<CR>
au FileType tex map <F6> :exec "!pdflatex %:r && bibtex %:r && pdflatex %:r && pdflatex %:r"<CR>

"" Line Numbers
nnoremap <F2> :set nu!<CR>

"" Filetypes and highlighting
:autocmd BufNewFile,BufRead *.md set ft=markdown
:autocmd BufNewFile,BufRead *.arff set ft=arff
:autocmd BufNewFile,BufRead *.slim set ft=slim
:autocmd BufNewFile,BufRead *.scala set ft=scala


"" Hilight long lines
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/
