-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }


    use({
        'savq/melange-nvim',
        as = 'melange',
        config = function()
            vim.cmd('colorscheme melange')
        end
    })

    use 'folke/tokyonight.nvim'
    use("rafi/awesome-vim-colorschemes")
    use("water-sucks/darkrose.nvim")

    use('ThePrimeagen/vim-be-good') 
    use 'dhananjaylatkar/cscope_maps.nvim'
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    require('cscope_maps').setup({
        disable_maps = false, -- true disables my keymaps, only :Cscope will be loaded
        cscope = {
            db_file = "./cscope.out", -- location of cscope db file
            exec = "cscope", -- "cscope" or "gtags-cscope"
            picker = "quickfix", -- "telescope", "fzf-lua" or "quickfix"
            skip_picker_for_single_result = false, -- jump directly to position for single result
            db_build_cmd_args = { "-bqkv" }, -- args used for db build (:Cscope build)
        },
    })

end)
