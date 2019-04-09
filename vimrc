syntax enable
set number
set cursorline
colo codedark
filetype indent on
set nowrap
set cc=80,120
set smartindent
set shiftwidth=4
set expandtab
set tabstop=4
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

augroup filetypes
    au BufRead,BufNewFile *.cshtml setfiletype cshtml
augroup END
augroup formatting
    au FileType c,cpp,cs setlocal cindent
    au FileType c,cpp,cs setlocal fdm=syntax
augroup END
augroup dotnet
    au FileType cs,cshtml setlocal errorformat=\ %#%f(%l\\\,%c):\ %m\ \\\[%.%#
augroup END

augroup texFormat
    au FileType tex,bib setlocal wrap
    au FileType tex,bib setlocal linebreak
    au FileType tex,bib map <buffer> j gj
    au FileType tex,bib map <buffer> k gk
    au FileType tex,bib map <buffer> $ g$
    au FileType tex,bib map <buffer> ^ g^
    au FileType tex,bib map <buffer> 0 g0
    au FileType tex,bib setlocal cc=
augroup END
