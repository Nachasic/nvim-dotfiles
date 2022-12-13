local wk = require("which-key")

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
            d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
            D = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
            i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Implementation" },
            r = { "<cmd>lua vim.lsp.buf.references()<CR>", "References" },
        },

    }
}, { prefix = "<leader>" })
