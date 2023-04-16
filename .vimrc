if has("syntax")
  syntax on
endif

"filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'ronakg/quickr-cscope.vim'
"auto completion
Plugin 'Valloric/YouCompleteMe'
Plugin 'NLKNguyen/papercolor-theme'
call vundle#end()

set tags=tags,./tags,../tags,../../tags,../../../tags,../../../../tags

function! LoadCscope()
  let db = findfile("cscope.out", ".;")
    if (!empty(db))
      let path = strpart(db, 0, match(db,"/cscope.out$"))
      set nocscopeverbose "suppress 'duplicate connection' error
      exe "cs add ". db . " " . path
      set cscopeverbose
    elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
    endif
endfunction
au BufEnter /* call LoadCscope()

"nnoremap <C-b> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

colorscheme PaperColor
set bg=dark
"set autoindent
"set expandtab
set smartindent
"set paste
set nu
set shiftwidth=2
set ts=4
set laststatus=2
set showmatch
set ruler
set hlsearch
set autoread
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set backspace=indent,eol,start
set colorcolumn=80

set whichwrap+=<,>,h,l,[,]
set wrap
set tw=80
set fo+=t
set wm=0
set linebreak

let g:ycm_show_diagnostics_ui = 1
