require("lazy").setup({
    {
        'navarasu/onedark.nvim',
        config = function()
            require('onedark').load()
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 
            'nvim-tree/nvim-web-devicons' 
        },
        config = function()
            require("plugin/lualine")
        end
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim",
        },
        config = function()
            require("plugin/neo-tree-nvim")
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            require("plugin/indent-blackline")
        end
    },
    {
        'lilydjwg/fcitx.vim'
    },
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require("alpha").setup(require("alpha.themes.startify").config)
        end
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 
            {
                "nvim-telescope/telescope-live-grep-args.nvim",
                version = "^1.0.0."
            },
            {
                "smartpde/telescope-recent-files"
            },
            'nvim-lua/plenary.nvim' 
        },
        config = function()
            require("plugin/telescope")
        end
    },
    {
        'airblade/vim-rooter',
        config = function()
            require("plugin/vim-rooter")
        end
    },
    {
        'mg979/vim-visual-multi',
        config = function()
            require("plugin/vim-visual-multi")
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("plugin/nvim-treesitter")
        end
    }
})
