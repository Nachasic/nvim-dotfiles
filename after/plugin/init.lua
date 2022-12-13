local telescope = require('telescope')

vim.api.nvim_create_autocmd({
  'BufEnter',
  'BufAdd',
  'BufNew',
  'BufNewFile',
  'BufWinEnter'
}, {
  group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
  callback = function()
    vim.opt.foldmethod = 'expr'
    vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
  end
})

require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "typescript", "javascript", "lua", "rust" },
  highlight = {
    enable = true,
    disable = { "lua" }
  }
}

telescope.setup({
  extensions = {
    terraform_doc = {
      url_open_command = "xdg-open",
    }
  }
})

telescope.load_extension('terraform_doc')
