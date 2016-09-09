" LaTeX file extension settings
setl textwidth=100
setl formatoptions+=t
setl linebreak

setl shiftwidth=4
setl expandtab
setl softtabstop=4

setl spelllang=en_us spell

" This is needed for building the document from within vim.  Without
" it, absolute paths are used.  This apparently causes bibtex some heartburn
" since it has a setting that gets fussy about absolute paths.  Could have
" changed that (openout_any = p --> openout_any = a), but this seemed a better
" solution.
set autochdir

function! OpenPDF()
    exec 'silent !open ' . substitute(bufname("%"),"tex","pdf","")
endfunction

" View the PDF using \lv
nnoremap <LocalLeader>lv :call OpenPDF()<CR>

setlocal errorformat=%f:%l:\ %m
if filereadable('Makefile')
    setlocal makeprg=make
else
    exec "setlocal makeprg=make\\ -f\\ \~/tools/latex.mk\\ " . substitute(expand("%:S"),"tex","pdf","")
endif


