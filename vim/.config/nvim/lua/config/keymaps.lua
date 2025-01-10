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
