
setlocal tw=90
setlocal expandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal autoindent


autocmd BufWritePre *.humu :call StripTrailingWhitespaces()

