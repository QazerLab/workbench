let g:ycm_server_python_interpreter = "/usr/bin/python3"

let g:ycm_enable_diagnostic_highlighting = 0

nnoremap <Leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <Leader>d :YcmCompleter GetDoc<CR>
nnoremap <Leader>f :YcmCompleter Format<CR>
