" Yank text to the X clipboard
noremap <leader>y "+y
noremap <leader>yy "+Y

" Preserve indentation while pasting text from the X clipboard
noremap <leader>p :set paste<CR>:put  +<CR>:set nopaste<CR>

