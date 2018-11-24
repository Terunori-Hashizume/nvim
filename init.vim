language en_US
set fileencoding=utf-8
filetype off

if &compatible
  set nocompatible " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " toml file including plugins
  let s:toml_dir = '~/.config/nvim/dein/toml'
  let s:toml = s:toml_dir.'/dein.toml'
  let s:lazy_toml = s:toml_dir.'/dein_lazy.toml'

  " load toml files
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" update lightline's colorscheme
function! SrcLnClr() abort
    call lightline#init()
    call lightline#colorscheme()
endfunction

" space as a Leader key
let mapleader = "\<Space>"

" set find path
set path+='~/memo/'
set path+='~/.config/nvim/'

" python (for deoplete)
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" for tmux
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum

" activate zsh aliases
let &shell='/bin/zsh -i'

set nobackup
set noswapfile

set number
set showmatch
set smartindent

set foldmethod=syntax
set nofoldenable

set virtualedit=onemore
set visualbell

set splitright

source ~/.config/nvim/default.vim
source ~/.config/nvim/appearance.vim
source ~/.config/nvim/keymap.vim
source ~/.config/nvim/japanese.vim
source ~/.config/nvim/competpro.vim
