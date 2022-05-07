let g:currentmode={
       \ 'n'  : 'NORMAL ',
       \ 'v'  : 'VISUAL ',
       \ 'V'  : 'V·Line ',
       \ "\<C-V>" : 'V·Block ',
       \ 'i'  : 'INSERT ',
       \ 'R'  : 'R ',
       \ 'Rv' : 'V·Replace ',
       \ 'c'  : 'Command ',
       \}

set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline+=%F
set statusline+=%=%l,\ %c\ \ \ \ \ \ \ \ \ 

set number relativenumber
set autoindent
set autochdir
set laststatus=2
set noshowmode

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set background=light
color PaperColor

nnoremap <F9> :! make "%:r"<CR>
nnoremap <F5> :!./%< <CR>
nnoremap <F4> :! submit "%:r"<CR>
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc> :w<CR>
