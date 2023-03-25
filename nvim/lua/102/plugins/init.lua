require('packer').startup {
    function(use)

        use 'wbthomason/packer.nvim'

        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }

        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.1',
            requires = { {'nvim-lua/plenary.nvim'} }
        }

        use 'neovim/nvim-lspconfig'
        --use 'simrat39/rust-tools.nvim

        -- Autocompletion framework
        use 'hrsh7th/nvim-cmp'
        use {
            -- cmp LSP completion
            'hrsh7th/cmp-nvim-lsp',
            -- cmp Snippet completion
            --'hrsh7th/cmp-vsnip',
            -- cmp Path completion
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
            after = { 'hrsh7th/nvim-cmp' },
            requires = { 'hrsh7th/nvim-cmp' },
        }
        
        use 'github/copilot.vim'

        use 'Mofiqul/dracula.nvim'

        use 'voldikss/vim-floaterm'

        use {
            "folke/noice.nvim",
            requires = {
                "MunifTanjim/nui.nvim",
                "rcarriga/nvim-notify",
            }
        }

        use 'nvim-treesitter/nvim-treesitter-context'

        if packer_bootstrap then
            require('packer').sync()
        end
end
}

require('102.plugins.treesitter')
require('102.plugins.lspconfig')
require('102.plugins.completion')
require('102.plugins.noice')
vim.cmd[[colorscheme dracula]]

