let mapleader =","

call plug#begin('~/.config/nvim/plugged')
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'jreybert/vimagit'
Plug 'junegunn/goyo.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

set bg=light
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus
set path+=**
set wildmenu

" Some basics:
	nnoremap c "_c
	set nocp
	filetype plugin on
	syntax on
	set enc=utf-8
	set nu rnu
	highlight ColorColumn ctermbg=magenta
	highlight SpellBad ctermbg=Red
    	highlight Conceal cterm=NONE ctermbg=NONE ctermfg=darkblue
	call matchadd('ColorColumn', '\%101v', 100)

" C/C++ Style
	autocmd BufNewFile,BufRead *.cpp,*.cc,*.c,*.h
		\ set tabstop=2 |
		\ set softtabstop=2 |
		\ set shiftwidth=2 |
		\ set textwidth=119 |
		\ set expandtab |
		\ set autoindent |
		\ set fileformat=unix
	let g:cpp_experimental_template_highlight = 1
	let g:cpp_member_variable_highlight = 1
	let g:cpp_class_decl_highlight = 1
	let g:cpp_posix_standard = 1
	let g:cpp_experimental_template_highlight = 1
    	highlight cppSTLnamespace ctermfg=DarkMagenta
    	highlight cppSTLconstant ctermfg=DarkMagenta


" File Browsing without plugins
	let g:netrw_banner=0		" disables annoying banner
	let g:netrw_browse_split=4	" open in prior window
	let g:netrw_altv=1		" open splits to the right
	let g:netrw_liststyle=3		" tree view
	let g:netrw_list_hide=netrw_gitignore#Hide()
	let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'

" Enable autocompletion:
	set wim=longest,list,full

" Disables automatic commenting on newline:
	autocmd FileType * setl fo-=c fo-=r fo-=o

" Convert latex math symbols into their actual unicode
	set cole=2

" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo \| se bg=light \| se linebreak<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setl spell! spl=en_us<CR>

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set sb spr

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Replace ex mode with gq
	map Q gq

" Check file in shellcheck:
	map <leader>s :!clear && shellcheck %<CR>

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Automatically deletes all trailing whitespace and newlines at end of file on save.
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritepre * %s/\n\+\%$//e

" Source init.vim after writing
	autocmd! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" Python run current buffer (make cleaner later)
    autocmd FileType python map <buffer> <F2> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
    autocmd FileType python imap <buffer> <F2> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" Same command except with Rscript
    autocmd FileType r map <buffer> <F2> :w<CR>:exec '!Rscript' shellescape(@%, 1)<CR>
    autocmd FileType r imap <buffer> <F2> <esc>:w<CR>:exec '!Rscript' shellescape(@%, 1)<CR>
