"set cindent
set cursorline
set encoding=utf8
set expandtab
set fileencoding=utf8
set fileencodings=ucs-bom,utf8,cp950,latin1
set guifont=Inconsolata:h12
set hlsearch
set noignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:»\ ,trail:⌐,eol:▫
set nobomb
set nocompatible
set number
set ruler
scriptencoding utf-8
set scrolloff=3
set secure
set shiftwidth=4
set showmatch
set smartcase
set t_Co=256
set tabstop=4
set visualbell
set wildmenu
" set mouse=a
syntax on

" color schema
set background=dark
let g:solarized_termcolors=256
colo solarized
highlight Search cterm=none ctermbg=blue

if has("autocmd")

  " Remove any trailing whitespace that is in the file
  autocmd BufWrite * if ! &bin | :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")')) | endif

endif " has("autocmd")

call pathogen#infect()
