set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

let mapleader=","
set number


Plugin  'VundleVim/Vundle.vim'
"type 'PluginInstall' to install plugins 

Plugin  'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

Plugin  'tpope/vim-fugitive'

Plugin  'scrooloose/nerdtree'
map<Leader>n : NERDTreeToggle<CR>

Plugin  'klen/python-mode'
 " Keys:
 " K             Show python docs
 " <Ctrl-Space>  Rope autocomplete
 " <Ctrl-c>g     Rope goto definition
 " <Ctrl-c>d     Rope show documentation
 " <Ctrl-c>f     Rope find occurrences
 " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
 " [[            Jump on previous class or function (normal, visual, operator
" modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator
" modes)
 let g:pymode_rope = 1
 let g:pymode_rope_completion = 1
 let g:pymode_rope_complete_on_dot = 1
 
 " Documentation
 let g:pymode_doc = 0
 let g:pymode_doc_key = 'K'

 "Linting
 let g:pymode_lint = 1
 let g:pymode_lint_checker = "pyflakes"
 " Auto check on save
 let g:pymode_lint_write = 1

 " Support virtualenv
 let g:pymode_virtualenv = 1

 " Enable breakpoints plugin
 let g:pymode_breakpoint = 1
 let g:pymode_breakpoint_bind = '<leader>b'

 " syntax highlighting
 let g:pymode_syntax = 1
 let g:pymode_syntax_all = 1
 let g:pymode_syntax_indent_errors = g:pymode_syntax_all
 let g:pymode_syntax_space_errors = g:pymode_syntax_all

 " Define maximum line length
 let g:pymode_options_max_line_length = 120
 let g:pymode_options_colorcolumn = 1
 
 
 " Don't autofold code
 let g:pymode_folding = 0

 "control A"
 let g:pymode_rope_completion_bind = '<C-a>' 


call vundle#end()
filetype plugin indent on
