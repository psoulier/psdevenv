
setlocal tw=90
setlocal expandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal autoindent


autocmd BufWritePre *.h,*.c,*.hpp,*.cpp :call StripTrailingWhitespaces()

