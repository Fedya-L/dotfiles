require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'lua',
        'rust',
        'bash',
        'vim',
        'javascript',
        'typescript',
    },

    highlight = {
        enable = true,
    }
}

