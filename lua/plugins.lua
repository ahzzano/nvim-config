return require('packer').startup(
function(use)
    use {'wbthomason/packer.nvim'}
    use "rebelot/kanagawa.nvim"
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'}
    use {'bluz71/vim-nightfly-guicolors'}
    use {
        "mcchrish/zenbones.nvim",
        requires = "rktjmp/lush.nvim"
    }
    use {'akinsho/toggleterm.nvim'}
    use {'rafi/awesome-vim-colorschemes'}
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { 
            {'nvim-lua/plenary.nvim'} 
        }
    }
    use {'folke/tokyonight.nvim'}
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { "catppuccin/nvim", as = "catppuccin" }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Autocompletion 
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use "rafamadriz/friendly-snippets"

    use "williamboman/mason.nvim" 
    use "williamboman/mason-lspconfig.nvim"
    use 'neovim/nvim-lspconfig'

    use 'dstein64/vim-startuptime'
    use 'lervag/vimtex'
    use 'andersevenrud/nordic.nvim'
    use {
        "glepnir/dashboard-nvim",
    }
end)
