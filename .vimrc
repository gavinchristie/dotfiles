" Vim config as of July 30th 2018

" Turn on file type detection
:filetype on

" Set leaders
:let mapleader=","
:let maplocalleader="\\"

" ======================
" Mappings
" ======================

" Unmap the arrow keys
no <down> ddp
no <C-down> yy<ESC>A<ESC>p<End>
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
no <C-up> yyP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Remap 'jk' as <ESC> in insert mode
inoremap jk <ESC>
vnoremap jk <ESC>
" inoremap <ESC> <nop>

" Remap 'J' as soft beginning of line down and 'K' as soft beginning of line up
nnoremap J j^
nnoremap K k^

" Insert new line above and below without enter insert mode
nnoremap go o<ESC>k
nnoremap gO O<ESC>j

" Delete line in insert mode
inoremap <leader>d <ESC>ddi

" Convert word to all caps from insert then from normal
inoremap <leader>U <ESC>viwUi
nnoremap <leader>U viwU

" Move to front and end of the current line
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $

" Add quotes to selected text
vnoremap " <ESC>a"<ESC>`<i"<ESC>

" Open ~/.vimrc at vertical split
nnoremap <leader>ev :vsplit $MYVIMRC<CR>

" Source ~/.vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>

" Quick pairs
inoremap <leader>' ''<ESC>i
inoremap <leader>" ""<ESC>i
inoremap <leader>( ()<ESC>i
inoremap <leader>[ []<ESC>i
inoremap <leader>{ {<CR><CR>}<ESC>ki<TAB>
nnoremap <leader>' ''<ESC>i
nnoremap <leader>" ""<ESC>i
nnoremap <leader>( ()<ESC>i
nnoremap <leader>[ []<ESC>i
nnoremap <leader>{ {<CR><CR>}<ESC>ki<TAB>

" ===============================
" Operator-Pending mappings
" ===============================

" Inside current parentheses
onoremap p i(

" Inside next parentheses
onoremap in( :<c-u>normal! f(vi(<cr>

" Inside previous parentheses
onoremap il( :<c-u>normal! F)vi(<cr>

" Inside next bracer
onoremap in{ :<c-u>normal! f{vi{<cr>

"Inside previous bracer
onoremap il{ :<c-u>normal! F}vi{<cr>

" ===============================
" Abbreviations
" ===============================

:iabbrev @@ gavin.christie123@gmail.com
:iabbrev uog@ gchristi@uoguelph.com
:iabbrev uog University of Guelph
:iabbrev teh the

" ===============================
" C Autocommands
" ===============================
:augroup filetype_c
	:autocmd!
	:autocmd FileType c inoremap <localleader>f for <leader>(<ESC>A <leader>{<ESC>
	:autocmd FileType c :iabbrev iff if <leader>(
:augroup END

" ===============================
" Settings
" ===============================

" Show line numbers
:set number
:set relativenumber
:set numberwidth=4

" Set color scheme
syntax on
set t_Co=256
set t_ut=
colorscheme monokai

:set nrformats= " <c-a> and <c-x> will always work as decimal with leading zeros
:set tabstop=4 " Sets how many space a tab is to 4
