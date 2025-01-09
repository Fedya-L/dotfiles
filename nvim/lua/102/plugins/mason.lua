require('mason').setup {}
require('mason-lspconfig').setup {
    ensure_installed = { 
        'lua_ls',
        'jsonls',
        'rust_analyzer',
        'ts_ls',
    }
}
