let s:cpo_save=&cpo
set cpo&vim
inoremap <C-G>S <Plug>(nvim-surround-insert-line)
inoremap <C-G>s <Plug>(nvim-surround-insert)
inoremap <M-t> :Neotree focus
imap <C-E> :norm gcc
inoremap <C-Q> :qa
inoremap <C-Del> dw
inoremap <C-BS> 
inoremap <F4> <Cmd>:nohl
inoremap <C-F> /
inoremap <C-Y> 
inoremap <C-Z> u
inoremap <M-C-kPageDown> V
inoremap <M-C-PageDown> V
inoremap <M-C-kPageUp> V
inoremap <M-C-PageUp> V
inoremap <M-C-kEnd> V
inoremap <M-C-End> V
inoremap <M-C-kHome> V
inoremap <M-C-Home> V
inoremap <M-C-Right> V
inoremap <M-C-Left> V
inoremap <M-C-Down> V
inoremap <M-C-Up> V
inoremap <M-kPageDown> V
inoremap <M-PageDown> V
inoremap <M-kPageUp> V
inoremap <M-PageUp> V
inoremap <M-kEnd> V
inoremap <M-End> V
inoremap <M-kHome> V
inoremap <M-Home> V
inoremap <M-Right> V
inoremap <M-Left> V
inoremap <M-Down> V
inoremap <M-Up> V
inoremap <M-S-Down> 
inoremap <M-S-Up> 
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <C-S> :w
inoremap <C-W> u
inoremap <C-U> u
snoremap 	 c	
nnoremap  <Cmd>nohlsearch|diffupdate|normal! 
snoremap  o
nmap  d
snoremap  i
snoremap  ui
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'' : '@'
xnoremap <silent> <expr> Q mode() ==# 'V' ? ':normal! @=reg_recorded()' : 'Q'
xnoremap S <Plug>(nvim-surround-visual)
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap cS <Plug>(nvim-surround-change-line)
nnoremap cs <Plug>(nvim-surround-change)
nnoremap ds <Plug>(nvim-surround-delete)
xnoremap gS <Plug>(nvim-surround-visual-line)
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap ySS <Plug>(nvim-surround-normal-cur-line)
nnoremap yS <Plug>(nvim-surround-normal-line)
nnoremap yss <Plug>(nvim-surround-normal-cur)
nnoremap ys <Plug>(nvim-surround-normal)
nnoremap <M-t>  h i
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
snoremap <BS> "_d
snoremap <Del> "_d
snoremap <F4> <Cmd>:nohl
nnoremap <F4> <Cmd>:nohl
snoremap <C-Y> i
snoremap <C-Z> ui
snoremap <M-S-Down> 
snoremap <M-S-Up> 
snoremap <C-O> o
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
nmap <C-W><C-D> d
nnoremap <C-L> <Cmd>nohlsearch|diffupdate|normal! 
imap  :norm gcc
inoremap  /
inoremap S <Plug>(nvim-surround-insert-line)
inoremap s <Plug>(nvim-surround-insert)
inoremap <expr>  v:lua.require'nvim-autopairs'.completion_confirm()
inoremap  :qa
inoremap  :w
inoremap  u
inoremap  u
inoremap  
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ -uu\ 
set helplang=en
set noloadplugins
set operatorfunc=v:lua.require'nvim-surround'.normal_callback
set packpath=/usr/share/nvim/runtime
set runtimepath=~/.config/nvim,~/.local/share/nvim/site,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/nvim-autopairs,~/.local/share/nvim/lazy/lazydev.nvim,~/.local/share/nvim/lazy/nvim-surround,~/.local/share/nvim/lazy/rambo.nvim,~/.local/share/nvim/lazy/nvim-web-devicons,~/.local/share/nvim/lazy/nui.nvim,~/.local/share/nvim/lazy/neo-tree.nvim,~/.local/share/nvim/lazy/nvim-treesitter,~/.local/share/nvim/lazy/friendly-snippets,~/.local/share/nvim/lazy/blink.cmp,~/.local/share/nvim/lazy/telescope-fzf-native.nvim,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/telescope.nvim,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/mason.nvim,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/catppuccin,/usr/share/nvim/runtime,/usr/share/nvim/runtime/pack/dist/opt/netrw,/usr/share/nvim/runtime/pack/dist/opt/matchit,/usr/lib64/nvim,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/mason-lspconfig.nvim/after,~/.local/share/nvim/lazy/catppuccin/after
set termguicolors
set window=63
" vim: set ft=vim :
