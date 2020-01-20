if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$HOME/.config/nvim/plugged')

  Plug 'asvetliakov/vim-easymotion'

  Plug 'michaeljsmith/vim-indent-object'

  Plug 'tpope/vim-repeat'

  Plug 'tpope/vim-surround'

call plug#end()
