local null_ls = require("null-ls")

local b = null_ls.builtins
local d = b.diagnostics
local f = b.formatting

null_ls.setup({
    sources = {
        f.prettier,
        d.eslint,
    },
})
