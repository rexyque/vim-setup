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
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
let mapleader=","

augroup filetypes
    au BufRead,BufNewFile *.cshtml setfiletype cshtml
    au BufRead,BufNewFile *.pu,*.uml,*.plantuml setfiletype plantuml
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

augroup commonTasks
    au VimEnter * nnoremap <Leader><Space> :nohlsearch<CR>
augroup END
