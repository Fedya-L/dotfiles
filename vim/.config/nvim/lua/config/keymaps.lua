local set = vim.keymap.set

set('n', '<space>', '<nop>')

-- Telescope
local builtin = require('telescope.builtin')
set('n', '<leader>ff', builtin.git_files, { desc = 'Find files (Git)'})
set('n', '<leader>fs', builtin.grep_string, {})
set('n', '<leader>fa', builtin.find_files, { desc = 'Find files'})
set('n', '<leader>fg', builtin.live_grep, {})
set('n', '<leader>fb', builtin.buffers, {})
set('n', '<leader>fh', builtin.help_tags, {})
set('n', '<leader>fd', builtin.diagnostics, {})
set('n', '<leader>fj', builtin.jumplist, {})

local opts = { noremap = true, silent = true } -- Default options for keymaps

-- Key mappings for LSP-related Telescope functions
set('n', 'gD', builtin.lsp_type_definitions, opts)
set('n', 'gd', builtin.lsp_definitions, opts)
set('n', 'gi', builtin.lsp_implementations, opts)
set('n', 'gr', builtin.lsp_references, opts)
set('n', 'K', vim.lsp.buf.hover, opts) 
