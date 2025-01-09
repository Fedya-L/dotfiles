local config = require('lspconfig')

local set = vim.keymap.set

local opts = { noremap = true, silent = true }
--set('n', '<leader>e', vim.diagnostic.open_float, opts)
--set('n', '[d', vim.diagnostic.goto_prev, opts)
--set('n', ']d', vim.diagnostic.goto_next, opts)
--set('n', '<leader>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    local builtin = require('telescope.builtin')
    set('n', 'gD', builtin.lsp_type_definitions, bufopts)
    set('n', 'gd', builtin.lsp_definitions, bufopts)
    set('n', 'gi', builtin.lsp_implementations, bufopts)
    set('n', 'gr', builtin.lsp_references, bufopts)
    set('n', 'K', vim.lsp.buf.hover, bufopts)
    set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    --set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    --set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    --set('n', '<leader>wl', function()
    --    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    --end, bufopts)
    --set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
    set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
    set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
    --set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)

    vim.cmd [[ :au BufWritePre * lua vim.lsp.buf.format { async = false } ]]
end

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
config.rust_analyzer.setup {
    on_attach = on_attach,
}

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tsserver
config.ts_ls.setup {
    on_attach = on_attach,
}

config.lua_ls.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}
