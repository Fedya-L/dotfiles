return {
    "neovim/nvim-lspconfig", -- LSP configuration
    config = function()
        local config = require("lspconfig")
        config.clangd.setup{}
        config.lua_ls.setup{}
        config.nixd.setup{}
    end,
}
