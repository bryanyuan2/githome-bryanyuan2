
" bryanyuan2 .vimrc
"
" ---
" plugin: scrooloose/nerdcommenter
" ---
" <leader>cc | set as comment
" <leader>cu | resume the comment


set shell=/bin/bash

set nocompatible
filetype off

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'ap/vim-css-color'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'othree/xml.vim'
Plugin 'reedes/vim-thematic'
Plugin 'mhinz/vim-startify'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ternjs/tern_for_vim'
Plugin 'gregsexton/MatchTag'

" theme
Plugin 'junegunn/seoul256.vim'
" Plugin 'morhetz/gruvbox'
call vundle#end()


" leader
let mapleader = ','

" vim basic
set backspace=indent,eol,start
set showcmd
set incsearch
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set hlsearch
set cursorline
set ruler
set cindent
set history=50
set showmatch
set showmode
set paste
set nu
set t_Co=256
set term=xterm-256color

" vim smart tabs
set smarttab
set shiftwidth=4
set tabstop=4
set sw=4
set expandtab
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" vim file related
syntax on
set ignorecase
set fileformats=unix,dos
set fileformat=unix
set filetype=txt
set wildignore=*.o,*~,*.pyc
filetype plugin indent on

" vim encoding
let &termencoding = &encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,korea,sjis,gb18030,latin1
set enc=utf8
set fencs=utf8,big5,latin1
set fenc=utf8
set tenc=utf8
"setlocal spell spelllang=en_us
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
au BufNewFile,BufRead *.ros set filetype=php
filetype plugin on

" vim default highlight
highlight Comment ctermfg=darkcyan
highlight Search term=reverse ctermbg=4 ctermfg=7


" plugin: seoul256.vim
colo seoul256

" plugin: ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" plugin: nerdtree
nnoremap <silent> <F5> :NERDTree<CR>

" set molokai style
" let g:molokai_original = 1
" let g:rehash256 = 1

" plugin: vim-airline
set laststatus=2
" enable tabline
" install https://github.com/powerline/fonts
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1


" plugin: rainbow_parentheses
function! Config_Rainbow()
    call rainbow_parentheses#load(0)
    call rainbow_parentheses#load(1)
    call rainbow_parentheses#load(2)
endfunction
function! Load_Rainbow()
	call rainbow_parentheses#activate()
endfunction
augroup TastetheRainbow
autocmd!
autocmd Syntax * call Config_Rainbow()
autocmd VimEnter * call Load_Rainbow()
augroup END


" plugin: syntastic
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=1
let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes,速度比pylint快
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']
" 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black
" to see error location list
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:test = 5
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <Leader>s :call ToggleErrors()<cr>
" nnoremap <Leader>sn :lnext<cr>
" nnoremap <Leader>sp :lprevious<cr>

" vim 自身命令行模式智能补全
set wildmenu


" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle


" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p



" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

