local set = vim.keymap.set

vim.g.mapleader = ' '
set('n', '<space>', '<nop>')

-- Close tabs. Disabled because it breaks splitting windows
-- set('n', '<c-w>', ':bdelete<cr>', {silent=true})

-- Better moves
set('n', '<leader>ex', vim.cmd.Ex)
set('i', 'jk', '<esc>')

-- Save using CTRL + s
set('i', '<c-s>', '<esc>:w<cr>a')
set('n', '<c-s>', ':w<cr>')

-- Telescope
local builtin = require('telescope.builtin')
set('n', '<leader>ff', builtin.git_files, {})
set('n', '<leader>fs', builtin.grep_string, {})
set('n', '<leader>fa', builtin.find_files, {})
set('n', '<leader>fg', builtin.live_grep, {})
set('n', '<leader>fb', builtin.buffers, {})
set('n', '<leader>fh', builtin.help_tags, {})
set('n', '<leader>fd', builtin.diagnostics, {})
set('n', '<leader>fj', builtin.jumplist, {})

-- Copilot
--set('n', '<leader>cp', '<Cmd>Copilot panel<CR>', opts)
set('i', '<C-l>', "copilot#Accept()", { expr = true, noremap = true, silent = true, replace_keycodes = false })

-- Floaterm
set('n', '<leader>ft', '<Cmd>FloatermToggle<CR>')
set('t', '<leader>ft', '<C-\\><C-n><Cmd>FloatermToggle<CR>')

-- Nvim-tree
set('n', '<leader>tt', '<Cmd>NvimTreeToggle<CR>')
set('n', '<leader>tf', '<Cmd>NvimTreeFindFile<CR>')

-- Just because
set('n', 'ffs', '$a;<esc>')
