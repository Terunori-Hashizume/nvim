" enable yank till end
nnoremap Y y$

" make go-to-line easy
nnoremap <CR> G

" type easily
nnoremap <Leader>a ^
nnoremap <Leader>e $
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>ex :Ex<CR>
nnoremap <Leader>f :find<Space>
nnoremap <silent> <Leader>hl :help<BAR>only<CR>

" center
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" move easily in insert mode
inoremap jk <Esc>
inoremap <C-h> <BS>
inoremap <C-d> <Del>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-j> <CR>

" move easily in command mode
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>

" buffer
nnoremap <silent> [b :bprev<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <Leader>db :bdelete<CR>
nnoremap <Leader>lb :ls<CR>

" tab
nnoremap <Leader>te :tabedit<Space>
nnoremap <Leader>tp :tabprev<CR>
nnoremap <Leader>tn :tabnext<CR>
nnoremap <Leader>tc :tabclose<CR>

" configure a file easily
nnoremap <Leader>vi :e ~/.config/nvim/init.vim<CR>
nnoremap <Leader>zr :e ~/.zshrc<CR>
nnoremap <Leader>ze :e ~/.zshenv<CR>
nnoremap <Leader>tm :e ~/.tmux.conf<CR>

" source a file
nnoremap <F5> :so ~/.config/nvim/init.vim<CR>:call SrcLnClr()<CR>
nnoremap <Leader><F5> :!source ~/.zshenv<CR>:!source ~/.zshrc<CR>
