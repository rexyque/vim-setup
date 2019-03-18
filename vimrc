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
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax
au BufRead,BufNewFile *.cshtml setfiletype cshtml
au FileType c,cpp,cs setlocal cindent
au FileType cs,cshtml setlocal makeprg=dotnet\ run
au FileType cs,cshtml setlocal errorformat=\ %#%f(%l\\\,%c):\ %m\ \\\[%.%#
