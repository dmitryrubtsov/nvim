"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-Plug install
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let vimplug_exists=expand('$VIMDATA/site/autoload/plug.vim')

let curl_exists=expand('curl')

if !filereadable(vimplug_exists)
	if !executable(curl_exists)
		echoerr 'You have to install curl or first install vim-plug yourself!'
		execute 'q!'
	else
		let vim_plug_url = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
		echo "Installing Vim-Plug..."
		echo ""
		exec '!'curl_exists' --ssl-no-revoke -fLo ' . shellescape(vimplug_exists) . ' --create-dirs ' . vim_plug_url

		autocmd VimEnter * PlugInstall
	endif
endif

call plug#begin('$VIMDATA/plugged')
" --> Code/Project navigation
Plug 'ctrlpvim/ctrlp.vim' " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' } " Vim plugin that displays tags in a window
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " A tree explorer plugin
Plug 'tpope/vim-commentary' " Comment stuff out.
Plug 'editorconfig/editorconfig-vim'

" --> Languages support
" Dark powered asynchronous completion framework for neovim/Vim8
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Plug 'w0rp/ale' " Asynchronous linting/fixing for Vim and Language Server Protocol (LSP) integration

" --> Colorschemes
Plug 'NLKNguyen/papercolor-theme' " Light & Dark Vim color schemes inspired by Google's Material Design

" --> Other
Plug 'airblade/vim-gitgutter' " A Vim plugin which shows a git diff in the gutter
" Plug 'ervandew/supertab' " Perform all your vim insert mode completions with Tab 
Plug 'itchyny/lightline.vim' " A light and configurable statusline/tabline
" Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair
" Plug 'maxbrunsfeld/vim-yankstack' " A lightweight implementation of emacs's kill-ring
" Plug 'maximbaz/lightline-ale' " ALE indicator for the lightline
if has('gui_running')
Plug 'ryanoasis/vim-devicons' " Adds file type glyphs/icons to popular Vim plugins
endif
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Plug 'tpope/vim-fugitive', " A Git wrapper so awesome

" --> Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Plug 'godlygeek/tabular', { 'for': 'markdown' } " For text filtering and alignment
" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } " Markdown
" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

" --> Python
Plug 'plytophogy/vim-virtualenv' " Plugin for working with python virtualenvs 
" Plug 'python-mode/python-mode', { 'branch': 'develop', 'for': 'python' } " Python-mode. PyLint, Rope, Pydoc, breakpoints from box.

" --> Snippets
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
call plug#end()

" Automatically install missing plugins on startup
 autocmd VimEnter *
   \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
   \|   PlugInstall --sync | q
   \| endif
