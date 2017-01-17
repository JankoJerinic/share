"#---------------------------------------
"# .vimrc
"# VIM configuration scripts
"#---------------------------------------

"# Vundle Setup Begin
"#---------------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'
" Plugins 
Bundle 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'edkolev/tmuxline.vim'

" Required
call vundle#end()
filetype plugin indent on
"# Vundle End
"#---------------------------------------

syntax enable
set background=dark
" colorscheme gotham256
let g:solarized_termcolors = 256
colorscheme solarized
" Clear solarized SpecialKey highlights for spaces/tabs
hi! clear SpecialKey

                       
"# Use hybrid relative and absolute numbers
"#---------------------------------------
set relativenumber
set number

set ruler					" Show the ruler
set laststatus=2			" Always show the status bar
set clipboard=unnamed

"# Setup indentation features
"# (http://tedlogan.com/techblog3.html)
"#---------------------------------------
set autoindent 
set smartindent
set cindent								" Enable automatic C-style indenting
set tabstop=4							" How many columns is a tab
set softtabstop=4						" How many columns for new tab insertions
set shiftwidth=4						" How many spaces of indent using >>
set noexpandtab							" Use tabs instead of spaces

"# Make backspace work normally
set backspace=eol,start,indent

"# Setup Search configuration
"#---------------------------------------
set ignorecase							" Search ignores case
set hlsearch							" Highlight search results

"# Setup list chars and override their color
"#---------------------------------------
set list
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
hi SpecialKey ctermfg=236 guifg=236
hi NonText ctermfg=236 guifg=236

"# Key mappings 
"#---------------------------------------------
"inoremap jk <esc>
"nnoremap o o<esc>
"nnoremap O O<esc>
"nnoremap <CR> i<CR><esc>

"# Make sure that arrow keys are unused. 
"#---------------------------------------
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"# Potentially disable arrows in insert mode, as well.
" inoremap <Up> <Nop>
" inoremap <Down> <Nop>
" inoremap <Left> <Nop>
" inoremap <Right> <Nop>
"

"#---------------------------------------------
"# NERDTree Settings
"#---------------------------------------------
" ** Auto-start NerdTree when opening with no arguments:
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" ** Auto-start NerdTree when opening a folder: 
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" ** Auto-start NerdTree always:
autocmd vimenter * NERDTree

nmap <F3> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

nmap <F8> :TagbarToggle<CR>

"# Add Ctrl+P
"#---------------------------------------------
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:solarized_contrast = 'high'
let g:tmuxline_preset = 'full'

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	    let g:airline_symbols = {}
	endif

" unicode symbols
"let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''
