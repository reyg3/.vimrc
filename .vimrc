""" GENERAL VIM ENTRIES:

"execute pathogen#infect()
syntax on
filetype plugin indent on

" turn on line numbers
set number

" show filenames
set laststatus=2
set statusline=%F

" turn hybrid line numbers on
set number relativenumber
set nu rnu

" set color scheme
color desert

" allow mouse to change word position
set mouse=a

" set tab length
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" highlight column 80
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

" on so taglist can determine type of file
filetype on

" turn on advanced features of vim by turning off Vi compatibility
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on


""" FINDING FILES:

" recursive search into subfolders and provide tab completion
set path+=**

" display all matching files when tab completing
" ex. :find *filename* tab
" :b to autocomplete in any open buffer
set wildmenu

" TAG JUMPING

" create 'tags' file (may need to install ctags first)
" use ^] to jump to tag under cursor
" use g^] for ambiguous tags
" use ^t to jump back though the tag stack
command! MakeTags !ctags -R .


""" FILE BROWSING:

" tweaks for browsing
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings
let g:netrw_banner=0        " disable annoying top banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide='.*\.swp$' " hide vim swap files

" open files in left window by default
let g:netrw_chgwin=0

" remap shift-enter to fire up the sidebar
nnoremap <silent> <S-CR> :rightbelow 40vs<CR>:e .<CR>
" the same remap as above - may be necessary in some distros
nnoremap <silent> <C-M> :rightbelow 40vs<CR>:e .<CR>
" remap control-enter to open files in new tab
nmap <silent> <C-CR> t :rightbelow 40vs<CR>:e .<CR>:wincmd h<CR>
" the same remap as above - may be necessary in some distros
nmap <silent> <NL> t :rightbelow 40vs<CR>:e .<CR>:wincmd h<CR>


""" SKELETON SNIPPETS:

nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

