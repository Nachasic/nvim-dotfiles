vim.api.nvim_exec(
[[
if exists("g:neovide")
  set guifont=DankMono\ Nerd\ Font\ Mono:h11

  let  g:neovide_scale_factor=1.0
  function! ChangeScaleFactor(delta)
    let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
  endfunction

  function! ResetScaleFactor()
    let g:neovide_scale_factor=1.0
  endfunction

  nnoremap <expr><C-=> ChangeScaleFactor(1.05)
  nnoremap <expr><C--> ChangeScaleFactor(1/1.05)
  nnoremap <expr><C-0> ResetScaleFactor()
endif
]], true)
require("alexculliere")
