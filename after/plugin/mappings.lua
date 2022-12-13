local wk = require("which-key")

wk.register({
    e = {
        name = "Execute",
        x = { "<cmd>:Ex<CR>", "File explorer" },
    },
}, { prefix = "<leader>" })
