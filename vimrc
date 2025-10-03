vim9script

set nocompatible

language messages en_US.UTF8

const vimplug = 'https://raw.githubusercontent.com/' .. 
	'junegunn/vim-plug/master/plug.vim'
if has('unix') && empty(glob('~/.vim/autoload/plug.vim'))
    execute 'silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs ' 
	.. vimplug
elseif (has('win32') || has('win64')) && 
		empty(glob('$HOME/vimfiles/autoload/plug.vim'))
    execute 'silent !powershell -command "iwr -useb ' .. vimplug
        .. ' | ni $HOME/vimfiles/autoload/plug.vim -Force"'
endif

call plug#begin()
# Plug 'MattesGroeger/vim-bookmarks'    # Vim bookmarks
# Plug 'azabiong/vim-highlighter'       # Highlight words
# Plug 'dhruvasagar/vim-table-mode'     # Table alignment
# Plug 'junegunn/vim-easy-align'        # Easy align
# Plug 'justinmk/vim-dirvish'           # File browser
# Plug 'modulomedito/rookie_toys.vim'   # Hex, clangd, gitgraph, others
# Plug 'preservim/nerdtree'             # File browser
# Plug 'roginfarrer/vim-dirvish-dovish' # Keymap for file browser

if has('gui_running')
    Plug 'sainnhe/everforest'             # Colorscheme
else
    Plug 'tribela/vim-transparent'
endif

Plug 'brglng/vim-im-select'
Plug 'gagoar/SmartColumnColors'
# Plug 'skywind3000/asyncrun.vim'       # Asynchronously run
# Plug 't9md/vim-textmanip'             # Text movement
# Plug 'tpope/vim-commentary'           # Comment out
# Plug 'tpope/vim-fugitive'             # Git integration
# Plug 'tpope/vim-surround'             # Surroud word with char
# Plug 'tpope/vim-unimpaired'           # Efficient keymaps
# Plug 'vim-airline/vim-airline'        # Vim bottom status line
# Plug 'vim-airline/vim-airline-themes' # Vim bottom status line
# Plug 'vim-scripts/DrawIt'             # Draw ASCII art
# Plug 'yegappan/lsp'                   # LSP support
call plug#end()

# smartcolumncolors 字符数超过80时红色高亮显示
g:smart_display_opts = { 'column': 80 }


# 主题配置
g:gruvbox_italic = 0
g:gruvbox_contrast_dark = 'soft'

g:everforest_background = 'soft'
g:everforest_disable_italic_comment = 1
# colorscheme everforest

if has('gui_running')
    echom 'entered gui'
    set guicursor+=a:blinkon0 

    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    
    set guifont=Maple\ Mono\ NF\ CN\ 11
    set background=dark

    # colorscheme gruvbox

    set lines=35
    set columns=100
endif

# im-select
# 命令模式下关闭输入法切换
g:im_select_enable_cmd_line = 0

set cursorline
set number
set relativenumber
set autochdir

# source $VIMRUNTIME/defaults.vim
# 
# g:mapleader = ' '
# 
# cnoremap <C-v> <C-r>*
# cnoremap <M-i> <Tab>
# cnoremap <M-u> <S-Tab>
# nnoremap * *Nzz
# nnoremap <C-d> <C-d>zz
# nnoremap <C-f> <C-u>zz
# nnoremap <C-p> :find *
# nnoremap <silent> <C-q> :q<CR>
# nnoremap <C-s> :%s/\s\+$//e<bar>w<CR>
# nnoremap <C-w>i gt
# nnoremap <C-w>u gT
# nnoremap <F2> :%s/\C\<<C-r><C-w>\>/<C-r><C-w>/g<Left><Left>
# nnoremap <M-i> :b<Space><Tab>
# nnoremap <M-u> :b<Space><Tab><S-Tab><S-Tab>
# nnoremap <M-j> :m .+1<CR>==
# nnoremap <M-k> :m .-2<CR>==
# nnoremap <leader>lh :noh<CR>
# nnoremap <leader>vim :vs $MYVIMRC<CR>
# nnoremap K i<CR><Esc>
# nnoremap O O<Space><BS><Esc>
# nnoremap gd <C-]>
# nnoremap go "0yi):!start <C-r>0<CR>
# nnoremap j gj
# nnoremap k gk
# nnoremap o o<Space><BS><Esc>
# noremap <leader>P "0P
# noremap <leader>p "0p
# noremap H g^
# noremap L g_
# vnoremap / "-y/<C-r>-<CR>N
# vnoremap <C-d> <C-d>zz
# vnoremap <C-f> <C-u>zz
# vnoremap <F2> "-y:%s/<C-r>-\C/<C-r>-/g<Left><Left>
# vnoremap <M-j> :m '>+1<CR>gv=gv
# vnoremap <M-k> :m '<-2<CR>gv=gv
# vnoremap <leader>ss :sort<CR>
# vnoremap p pgv<Esc>
# 
# set autoindent
# set autoread
# set belloff=all
# set breakindent
# set clipboard=unnamed
# set colorcolumn=81,101
# set complete=.,w,b,u,t
# set completeopt=menuone,noselect,popup
# set cursorcolumn
# set cursorline
# set expandtab
# set fileformat=unix
# set grepformat=%f:%l:%c:%m,%f:%l:%m
# set guifont=DepartureMono\ Nerd\ Font\ Mono:h11
# set guioptions-=L
# set guioptions-=T
# set guioptions-=m
# set guioptions-=r
# set guioptions+=k
# set hlsearch
# set ignorecase
# set infercase
# set iskeyword=@,48-57,_,192-255,-
# set laststatus=2
# set nofoldenable
# set noswapfile
# set nowrap
# set number list listchars=tab:-->,trail:~,nbsp:␣
# set path+=**
# set pumheight=50
# set relativenumber
# set shiftwidth=4
# set shortmess=flnxtocTOCI
# set signcolumn=yes
# set smartcase
# set smarttab
# set softtabstop=4
# set splitbelow
# set splitright
# set statusline=%f:%l:%c\ %m%r%h%w%q%y\ [enc=%{&fileencoding}]\ [%{&ff}]
# set tabstop=4
# set termguicolors
# set textwidth=100
# set undodir=expand('$HOME/.vim/undo/')
# set undofile
# set viminfofile=$HOME/.vim/.viminfo
# set wildcharm=<Tab>
# set wildignorecase
# set wildoptions=pum
# 
# def! g:LiveGrep()
#     var user_input = input('Enter your search pattern: ')
#     execute("silent! grep " .. user_input .. " .")
#     execute("copen")
#     execute("redraw!")
# enddef
# 
# def! g:Retab()
#     set ts=4
#     set noet
#     execute("%retab!")
#     set et
# enddef
# 
# if executable('rg')
#     set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case\ --hidden grepformat=%f:%l:%c:%m
#     nnoremap <leader>gg :silent! grep <C-R><C-W> .<CR>:copen<CR>:redraw!<CR>
#     nnoremap <leader>gf :call LiveGrep()<CR>
# endif
# 
# const vimplug = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# if has('unix') && empty(glob('~/.vim/autoload/plug.vim'))
#     execute 'silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs ' .. vimplug
# elseif (has('win32') || has('win64')) && empty(glob('$HOME/vimfiles/autoload/plug.vim'))
#     execute 'silent !powershell -command "iwr -useb ' .. vimplug
#         .. ' | ni $HOME/vimfiles/autoload/plug.vim -Force"'
# endif
 
# # autocmd! VimEnter * colorscheme habamax
# autocmd! VimEnter * colorscheme everforest | AirlineTheme everforest
# g:everforest_disable_italic_comment = 1
# 
# command! CC RookieClangdGenerate
# command! GD RookieGitDiff
# command! GG RookieGitGraph
# command! GGL RookieGitGraphLocal
# 
# autocmd! FileType nerdtree nnoremap <buffer> a :call NERDTreeAddNode()<CR>
# nnoremap <C-y> :NERDTreeToggle<CR>
# nnoremap <leader>cd :cd %:h<CR>:NERDTreeCWD<CR>
# nnoremap <leader>find :NERDTreeFind<CR>
# 
# nmap ga <Plug>(EasyAlign)
# xmap ga <Plug>(EasyAlign)
# 
# nnoremap <F9> :AsyncStop<CR>:AsyncReset<CR>
# nnoremap <F10> :copen <bar> AsyncRun cargo<Space>
# set statusline+=\ %{FugitiveStatusline()}
# 
# autocmd! BufRead *.c,*.cpp execute('LspDiag highlight disable | setlocal iskeyword-=-')
# autocmd User LspSetup call LspOptionsSet({autoHighlightDiags: v:true})
# autocmd User LspSetup call LspAddServer([
# \ {name: 'c', filetype: ['c', 'cpp'], path: 'clangd', args: ['--background-index']},
# \ {name: 'lua', filetype: ['lua'], path: 'clangd', args: ['--background-index']},
# \ {name: 'markdown', filetype: ['markdown'], path: 'marksman', args: ['server'], syncInit: v:true},
# \ {name: 'rust', filetype: ['rust'], path: 'rust-analyzer', args: [], syncInit: v:true},
# \ {name: 'toml', filetype: ['toml'], path: 'taplo', args: ['lsp', 'stdio'], syncInit: v:true},
# \ ])
# 
# nnoremap <leader>rn             :LspRename<CR>
# nnoremap <silent> <S-M-f>       :LspFormat<CR>
# nnoremap <silent> <leader>hh    :LspSwitchSourceHeader<CR>
# nnoremap <silent> [d            :LspDiagPrev<CR>
# nnoremap <silent> ]d            :LspDiag highlight enable<CR>:LspDiagNext<CR>
# nnoremap <silent> gS            :LspSymbolSearch<CR>
# nnoremap <silent> gd            :LspGotoDefinition<CR>
# nnoremap <silent> <leader>gd    <C-w>v:LspGotoDefinition<CR>
# nnoremap <silent> gh            :LspHover<CR>
# nnoremap <silent> gi            :LspGotoImpl<CR>
# nnoremap <silent> gr            :LspShowReferences<CR>
# nnoremap <silent> gs            :LspDocumentSymbol<CR>
# nnoremap <silent> gy            :LspGotoTypeDef<CR>
# 
# xnoremap <M-d>                  <Plug>(textmanip-duplicate-down)
# nnoremap <M-d>                  <Plug>(textmanip-duplicate-down)
# xnoremap <M-D>                  <Plug>(textmanip-duplicate-up)
# nnoremap <M-D>                  <Plug>(textmanip-duplicate-up)
# xnoremap <C-j>                  <Plug>(textmanip-move-down)
# xnoremap <C-k>                  <Plug>(textmanip-move-up)
# xnoremap <C-h>                  <Plug>(textmanip-move-left)
# xnoremap <C-l>                  <Plug>(textmanip-move-right)
# nnoremap <F6>                   <Plug>(textmanip-toggle-mode)
# xnoremap <F6>                   <Plug>(textmanip-toggle-mode)
# xnoremap <Up>                   <Plug>(textmanip-move-up-r)
# xnoremap <Down>                 <Plug>(textmanip-move-down-r)
# xnoremap <Left>                 <Plug>(textmanip-move-left-r)
# xnoremap <Right>                <Plug>(textmanip-move-right-r)
