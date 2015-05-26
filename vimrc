set nocompatible
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on
syntax enable

let g:solarized_termcolors=256
set t_Co=256
" because of this: 
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

let hour = strftime("%H")
if 6 <= hour && hour < 18
  set background=light
else
  set background=dark
endif
colorscheme solarized

" syntactic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" airline
let g:airline_left_sep=''
let g:airline_right_sep=''

" intendation
set tabstop=4
set shiftwidth=4
set expandtab
