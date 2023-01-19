if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
"
"" if &term =~ '256color'
"     " disable Background Color Erase (BCE) so that color schemes
"     " render properly when inside 256-color tmux and GNU screen.
"     " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
"     set t_ut=
" endif
" :set t_Co=256
" set termguicolors
let mapleader=" "
nnoremap <space> <Nop>
" noremap <leader><tt> :terminal<CR>
tnoremap <Esc><Esc> <C-\><C-n>
" vim conf
set number
set relativenumber
set showmatch
set hlsearch
"ctrl+t for new tab
noremap <C-t> :tabnew<cr>
"Ctrl+s acts like write
" noremap <silent> <C-s>   :update<CR>
" vnoremap <silent> <C-s>   <C-C>:update<CR>
" inoremap <silent> <C-s>   <C-O>:update<CR>
syntax on
set path+=**
set ttyfast
set laststatus=2
set incsearch
set clipboard+=unnamedplus
nnoremap <esc> :noh<return><esc>
" quicker window movment
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
"teeeeeeest

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"


"emmet
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"nerdtree
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>N :NERDTreeFind<CR>
"switching buffers --trenutno ne radi zbog windowsa..will solve it later?
" nnoremap <C-Tab> :bn<CR>
" nnoremap <C-S-Tab> :bp<CR>
"fzf 
nnoremap <silent> <leader>f :FZF<cr>

call plug#begin()
Plug 'https://github.com/lifepillar/vim-gruvbox8.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/MaskRay/ccls.git', { 'for': 'ccls' }
Plug 'https://github.com/preservim/nerdtree.git', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'junegunn/fzf',  { 'dir': '~/.fzf' }
Plug 'https://github.com/mattn/emmet-vim'
Plug 'https://github.com/alvan/vim-closetag'
Plug 'nvim-lualine/lualine.nvim'
Plug 'https://github.com/tomasiser/vim-code-dark'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/yorickpeterse/happy_hacking.vim'
Plug 'https://github.com/zacanger/angr.vim'
call plug#end()

colorscheme angr
set background=dark
"
"


lua << END
require('lualine').setup()
END


"
"useful remaps
"renames ALL instances
nnoremap S :%s//g<left><left>
"
set shellcmdflag=-ic
