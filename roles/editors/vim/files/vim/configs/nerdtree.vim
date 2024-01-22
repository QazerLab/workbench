nnoremap <Leader>nn :NERDTreeFocus<CR>
nnoremap <Leader>nc :NERDTreeClose<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>

" Chdir on plugin load.
let g:NERDTreeChDirMode = 1

" XXX: blindly copy-pasted from official guide.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
