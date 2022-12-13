local wk = require("which-key")

wk.register({
    e = {
        name = "Execute",
        x = { "<cmd>:Ex<CR>", "File explorer" },
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
