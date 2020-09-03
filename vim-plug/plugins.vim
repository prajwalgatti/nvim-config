" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Tools
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Coc (Conquerer of Completion)
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    " Airline and Airline themes
    Plug 'vim-airline/vim-airline' 
    Plug 'vim-airline/vim-airline-themes'

  " Syntax
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

  " Color-schemes 
    " Onedark theme
    Plug 'joshdick/onedark.vim'
    " Gruvbox theme
    Plug 'morhetz/gruvbox'
    " Iceberg theme
    Plug 'cocopon/iceberg.vim'

    " Automatically install missing plugins on startup
    autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif

call plug#end()
