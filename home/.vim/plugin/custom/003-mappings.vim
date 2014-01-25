" Key bindings are a developer's bread and butter. Over time, I remap and
" remap my keys to make my life as easy as possible. I've separated my generic
" mappings from my plug-in mappings intentionally, just for clarity.

" One less key to press to enter the Vim shell.
nnoremap ; :

" Toggle the use of list characters.
nnoremap <silent> <leader>l :set list!<cr>

" Toggle the state of search highlighting locally.
nnoremap <silent> <leader>h :setlocal hlsearch!<CR>

" Toggle the state of spelling locally.
nnoremap <silent> <leader>j :setlocal spell!<CR>

" Toggle the visibility of cursor lines.
nnoremap <leader>cl :setlocal cursorline! cursorcolumn!<CR>

" Toggle the current fold.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>

" Inject the current date.
inoremap <leader>pt <C-R>=strftime("%Y-%m-%d")<CR>

" Inject the current time with the labeling of the time-zone.
inoremap <leader>py <C-R>=strftime("%H:%M:%S %Z")<CR>
cnoremap <leader>py <C-R>=strftime("%H.%M.%S_%Z")<CR>

" Inject the current date and time (in Insert or Command mode).
inoremap <leader>pt <C-R>=strftime("%Y-%m-%d %H:%M:%S %Z")<CR>
cnoremap <leader>pt <C-R>=strftime("%Y%m%d%H%M%S")<CR>

" Disable classic arrow-key navigation in Normal mode.
nnoremap <Up>     <NOP>
nnoremap <Down>   <NOP>
nnoremap <Left>   <NOP>
nnoremap <Right>  <NOP>
nnoremap <C-w><Up>     <NOP>
nnoremap <C-w><Down>   <NOP>
nnoremap <C-w><Left>   <NOP>
nnoremap <C-w><Right>  <NOP>

" Formats the current buffer.
nnoremap <leader>f gg=G

" Bind make command.
nnoremap <leader>ma :make all<CR>
nnoremap <leader>mc :make clean<CR>
nnoremap <leader>mi :make install<CR>
nnoremap <leader>mu :make uninstall<CR>
nnoremap <leader>mt :make test<CR>

" Travel over errors.
nnoremap <leader>ce <ESC>:cnext<CR>
nnoremap <leader>cp <ESC>:cprevious<CR>
nnoremap <leader>co <ESC>:cwindow<CR>
nnoremap <leader>cf <ESC>:cfirst<CR>
nnoremap <leader>cl <ESC>:clast<CR>

" Rewrite 'vhe' to 'vert help'.
cnoremap vhe vert help

" Let me write to sudo whenever possible.
cnoremap sw% w !sudo te %

"{{{1 Plugin Mappings

nnoremap <F5> :so ~/.vimrc<CR> | :runtime! ~/.vim/plugin/custom/*.vim<CR>
nnoremap <F6> :TagbarToggle<CR><CR>
nnoremap <leader>p :Unite -buffer-name=files -start-insert
  \ file_rec/async file_mru buffer tag tag/file tag/include
  \ webcolorname tab jump mapping history/yank window
  \ rails/bundle rails/bundled_gem rails/stylesheet rails/view
  \ rails/javascript rails/config rails/controller rails/features
  \ tmux/clients tmux/sessions tmux/panes tmux/windows tmux
  \ git_modified git_untracked git_cached launcher<cr>

"{{{2 Tabularize
vnoremap <Leader>a: :Tabularize /:<CR>
vnoremap <Leader>a= :Tabularize /=<CR>
vnoremap <Leader>a{ :Tabularize /{<CR>
nnoremap <Leader>a: :Tabularize /:<CR>
nnoremap <Leader>a= :Tabularize /=<CR>
nnoremap <Leader>a{ :Tabularize /{<CR>
"}}}

"{{{2 Vimux
nnoremap <Leader>to :VimuxOpenPane<CR>
nnoremap <Leader>tp :VimuxPromptCommand<CR>
nnoremap <Leader>tt :VimuxRunLastCommand<CR>
nnoremap <Leader>tc :VimuxCloseRunner<CR>
vnoremap <Leader>ts "vy :call s:VimuxRepl()<CR>
nnoremap <Leader>ts vip<LocalLeader>ts<CR>

nnoremap <leader>e   :E<space>
nnoremap <leader>emm :Emodel<space>
nnoremap <leader>evv :Eview<space>
nnoremap <leader>ecc :Econtroller<space>

" Rails Only
nnoremap <leader>eff :Efabricator<space>
nnoremap <leader>ell :Elayout<space>
nnoremap <leader>ela :Elayout<space>
nnoremap <leader>elo :Elocale<space>
nnoremap <leader>elb :Elib<space>
nnoremap <leader>eee :Eenvironment<space>
nnoremap <leader>ehh :Ehelper<space>
nnoremap <leader>eii :Einitializer<space>
nnoremap <leader>ejj :Ejavascript<space>
nnoremap <leader>ess :Espec<space>
nnoremap <leader>esm :Espec models/<space>
nnoremap <leader>esc :Espec controllers/<space>
nnoremap <leader>esv :Espec views/<space>
nnoremap <leader>esl :Espec lib/<space>

" Git helpers
nnoremap <leader>gc  :Git commit<space>
nnoremap <leader>gco :Git checkout<space>
nnoremap <leader>gp  :Git push<space>
nnoremap <leader>gfa :Git fetch --all<CR>
nnoremap <leader>gf  :Git fetch<space>
nnoremap <leader>grm :Git rm %<CR>
nnoremap <leader>grmc :Git rm --cached %<CR>
nnoremap <leader>gab :Git add %<cr>
nnoremap <leadr>ga   :Git add<space>

function! s:VimuxRepl()
  call VimuxSendText(@v)
  call VimuxSendKeys("<Enter>")
endfunction

"}}}

"}}}
