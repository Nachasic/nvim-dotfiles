vim.api.nvim_exec(
[[
if exists("g:neovide")
  set guifont=DankMono\ Nerd\ Font\ Mono:h11

  let g:neovide_scale_factor=1.0
  function! ChangeScaleFactor(delta)
    let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
  endfunction

  function! ResetScaleFactor()
    let g:neovide_scale_factor=1.0
  endfunction

  " Make text bigger or smaller with a binding
  nnoremap <expr><C-=> ChangeScaleFactor(1.05)
  nnoremap <expr><C--> ChangeScaleFactor(1/1.05)
  nnoremap <expr><C-0> ResetScaleFactor()

  " Easy navigation between splits
  nnoremap <C-H> <C-W><C-H>
  nnoremap <C-J> <C-W><C-J>
  nnoremap <C-K> <C-W><C-K>
  nnoremap <C-L> <C-W><C-L>

  " Open all folds by default
  set foldlevel=99
endif
]], true)

-- Disable NetRW in favor of NvimTree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- termguicolors are recommended for NvimTree
vim.opt.termguicolors = true

require("alexculliere")
