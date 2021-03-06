if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$HOME/.config/nvim/plugged')

  Plug 'asvetliakov/vim-easymotion'

  Plug 'chaoren/vim-wordmotion'

  Plug 'glts/vim-textobj-comment'

  Plug 'jeetsukumaran/vim-pythonsense'

  Plug 'kana/vim-textobj-entire'

  Plug 'kana/vim-textobj-line'

  Plug 'kana/vim-textobj-user'

  Plug 'michaeljsmith/vim-indent-object'

  Plug 'nelstrom/vim-textobj-rubyblock'

  Plug 'svermeulen/vim-subversive'

  Plug 'tpope/vim-commentary'

  Plug 'tpope/vim-repeat'

  Plug 'tpope/vim-surround'

  Plug 'wellle/targets.vim'

call plug#end()

let g:plug_threads=8

" vim-subversive
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)

nmap <leader>s <plug>(SubversiveSubstituteRange)
xmap <leader>s <plug>(SubversiveSubstituteRange)
nmap <leader>ss <plug>(SubversiveSubstituteWordRange)
