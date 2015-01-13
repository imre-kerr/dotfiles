" Yank text to the X clipboard
noremap <leader>y "+y
noremap <leader>yy "+Y

" Preserve indentation while pasting text from the X clipboard
noremap <leader>p :set paste<CR>:put  +<CR>:set nopaste<CR>

" Tab specific option
set tabstop=8                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple

" Syntax highlighting
syntax on
