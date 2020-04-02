if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$HOME/.config/nvim/plugged')

  Plug 'asvetliakov/vim-easymotion'

  Plug 'bps/vim-textobj-python'

  Plug 'glts/vim-textobj-comment'

  Plug 'kana/vim-textobj-entire'

  Plug 'kana/vim-textobj-user'

  Plug 'michaeljsmith/vim-indent-object'

  Plug 'nelstrom/vim-textobj-rubyblock'

  Plug 'tpope/vim-repeat'

  Plug 'tpope/vim-surround'

  Plug 'wellle/targets.vim'

call plug#end()
