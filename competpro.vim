" run the current-buffer code with test cases
nnoremap <Leader>r :lcd %:h<CR>:!run %:t<CR>

" yank all texts to clipboard
nnoremap <Leader>ya ggVG"+y

" delete all texts (using when deleting all test cases)
nnoremap <Leader>da ggVGd
