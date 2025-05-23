return {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
        local config = require('nvim-treesitter.configs')
        config.setup {
            ensure_installed = { "c", "vim", "lua", "python", "nix" },
            highlight = true,

        }
    end
}
