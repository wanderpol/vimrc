" vim: set fdm=marker tw=78 ft=vim
"
" @author Jacky Alciné <me@jalcine.me>

if exists("g:jalcine_plugin_loaded")
  finish
else
  let g:jalcine_plugin_loaded = 1
endif

let g:vundle_default_git_proto = 'git'

"{{{ Personal plug-in dev
let my_plugin_prefix = 'jalcine/'

if $VIM_PLUGIN_DEV
  let my_plugin_prefix = 'file:///home/jacky/Development/Projects/'
else
  let my_plugin_prefix = 'jalcine/'
end

" We turn off file-type detection for now, this is
" required for using Vundle.
filetype off

"{{{ Plug-ins
set rtp+=~/.vim/bundle/vundle

" Invoke the swag!
call vundle#rc()

"{{{ Coloring and UI
Bundle 'flazz/vim-colorschemes'
Bundle 'chriskempson/tomorrow-theme', { 'rtp' : 'vim' }
Bundle 'altercation/solarized', { 'rtp' : 'vim-colors-solarized' }
Bundle 'tpope/vim-haml'
Bundle 'daylerees/colour-schemes', { 'rtp' : 'vim-themes' }
Bundle 'zenorocha/dracula-theme', { 'rtp' : 'vim' }
Bundle 'vim-php/tagbar-phpctags.vim'
Bundle 'StanAngeloff/php.vim'
Bundle 'rayburgemeestre/phpfolding.vim'
Bundle 'tpope/vim-dispatch'
"Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-endwise'
Bundle 'nanotech/jellybeans.vim'
Bundle 'bling/vim-airline'
"Bundle 'justincampbell/vim-eighties'
"Bundle 'kballenegger/vim-autoreadwatch'
Bundle 'gmarik/vundle'
Bundle 'marijnh/tern_for_vim'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'xolox/vim-misc'
Bundle 'mattn/webapi-vim'
Bundle 'rdolgushin/gitignore.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'mklabs/vim-backbone'
Bundle 'mklabs/grunt.vim'
Bundle 'godlygeek/csapprox'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'moll/vim-node'
Bundle "tpope/vim-repeat"
Bundle "tpope/vim-surround"
Bundle "Raimondi/delimitMate"
Bundle 'benmills/vimux'
Bundle 'guns/xterm-color-table.vim'
Bundle 'xolox/vim-session'
Bundle 'majutsushi/tagbar'
Bundle 'AndrewRadev/vim-eco'
Bundle 't4ku/marktag'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'bufexplorer.vim'
"Bundle (my_plugin_prefix . 'android.vim')
Bundle (my_plugin_prefix . 'cmake.vim')
Bundle (my_plugin_prefix . 'vim-snippets')
Bundle (my_plugin_prefix . 'localrc.vim')
Bundle (my_plugin_prefix . 'vim-rdoc')
Bundle (my_plugin_prefix . 'vim-tmux')
Bundle (my_plugin_prefix . 'unite-tag')
Bundle (my_plugin_prefix . 'syntastic')
Bundle 'tpope/vim-speeddating'
Bundle 'godlygeek/tabular'
Bundle 'jamessan/vim-gnupg'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/nerdcommenter'
Bundle 'aaronbieber/quicktask'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Chiel92/vim-autoformat'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'mhinz/vim-signify'
Bundle 'int3/vim-extradite'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'helino/vim-json'
Bundle 'groenewege/vim-less'
Bundle 'indenthtml.vim'
"Bundle 'Yggdroot/indentLine'
Bundle 'mutewinter/nginx.vim'
Bundle 'mutewinter/vim-tmux'
Bundle 'g3orge/vim-voogle'
Bundle 'tpope/vim-eunuch'
Bundle 'Rykka/colorv.vim'
Bundle 'mutewinter/vim-css3-syntax'
Bundle 'digitaltoad/vim-jade'
Bundle 'vim-perl/vim-perl'
Bundle 'othree/html5.vim'
Bundle 'ap/vim-css-color'
Bundle 'dbext.vim'
Bundle 'rking/ag.vim'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rbenv'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'astashov/vim-ruby-debugger'
Bundle 'mattn/gist-vim'
Bundle 'gmarik/github-search.vim'
Bundle 'junegunn/vim-github-dashboard'
Bundle 'mmozuras/vim-github-comment'
Bundle 'SirVer/ultisnips'
Bundle 'Shougo/unite.vim'
Bundle 'tsukkee/unite-tag'
Bundle 'basyura/unite-rails'
Bundle 'yuku-t/unite-git'
Bundle 'pasela/unite-webcolorname'
Bundle 'zepto/unite-tmux'
Bundle 'Shougo/vimproc.vim'
Bundle 'tpope/vim-abolish'
Bundle 'closetag.vim'
Bundle 'justinmk/vim-syntax-extra'
Bundle 'jamessan/vim-gnupg'

filetype plugin on
syntax enable
