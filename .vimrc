" No VI compatibility
set nocp

" No start of line on many commands
set nosol

" Display position at bottom of file.
set ruler

" Don't linewrap
set nowrap

" Display line numbers & set it to 4 columns wide
set number
set numberwidth=4

" Set the default color scheme
colorscheme desert

" Make backspace work correctly
set backspace=indent,eol,start

" Set font to Courier New
set gfn=Courier_New:h10:cANSI

" Map Alt-Up to move line up
inoremap <A-Up> <ESC>:m-2<CR>:startinsert<CR>
nnoremap <A-Up> :m-2<CR>==
vnoremap <A-Up> :m '<-2<CR>gv=gv

" Alt-Down to move line down
inoremap <A-Down> <ESC>:m+<CR>:startinsert<CR>
nnoremap <A-Down> :m+<CR>==
vnoremap <A-Down> :m '>+1<CR>gv=gv
