local wk = require("which-key")
local tscp = require('telescope.builtin')

wk.register({
  e = {
    name = "Explore",
    -- x = { "<cmd>:Ex<CR>", "File explorer" }, -- Disabled in favor of NvimTree
    t = { "<cmd>:NvimTreeToggle<CR>", "Toggle NvimTree" },
    f = { "<cmd>:NvimTreeFocus<CR>", "Focus NvimTree" },
    F = { "<cmd>:NvimTreeFindFile<CR>", "Focus current file" },
    c = { "<cmd>:NvimTreeCollapse<CR>", "Collapse" },
  },
  l = {
    name = "LSP",
    e = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Diagnostics" },
    k = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover" },
    s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature help" },
    r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
    g = {
      name = "go to",
      d = { tscp.lsp_definitions, "Definition" },
      D = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
      i = { tscp.lsp_implementations, "Implementation" },
      r = { tscp.lsp_references, "References" },
      t = { tscp.lsp_type_definitions, "Type definitions" },
    },
  },
  f = {
    name = "Find",
    f = { tscp.find_files, "Files" },
    s = { tscp.live_grep, "Grep string" },
    b = { tscp.buffers, "Buffers" },
    d = { tscp.diagnostics, "Diagnostics" },
    g = {
      name = "Git",
      C = { tscp.git_commits, "Commits" },
      c = { tscp.git_bcommits, "Buffer commits" },
      b = { tscp.git_branches, "Branches" },
      s = { tscp.git_status, "Current changes" },
      S = { tscp.git_stash, "Stash" },
    },
    h = {
      name = "Help",
      t = { "<cmd>:Telescope terraform_doc<CR>", "Terraform docs" },
      c = { "<cmd>:Cheatsheet<CR>", "Nvim cheatsheet" },
    }
  },

}, { prefix = "<leader>" })
