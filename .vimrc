if empty(glob('$HOME/.vim/autoload/plug.vim'))
  silent !curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$HOME/.vim/plugged')

  Plug 'lifepillar/vim-solarized8'

  Plug 'mhinz/vim-signify'

  Plug 'scrooloose/nerdcommenter'

  Plug 'scrooloose/nerdtree'

  Plug 'scrooloose/syntastic'

  Plug 'tpope/vim-fugitive'

  Plug 'tpope/vim-surround'

  Plug 'vim-airline/vim-airline'

  Plug 'vim-airline/vim-airline-themes'

call plug#end()

set number

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set t_ut=

syntax enable
set background=dark
set colorcolumn=80

colorscheme solarized8
let g:solarized_termtrans=1

hi Normal guibg=NONE ctermbg=NONE

set shiftwidth=4
set tabstop=4
set expandtab

set laststatus=2

let g:airline_powerline_fonts=1
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled=1
