return require("lazy").setup({
    {'olimorris/onedarkpro.nvim', priority = 1000},
    {'neoclide/coc.nvim', branch = 'release'},
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    },
    {'nvim-lualine/lualine.nvim'},
    {'rhysd/vim-clang-format'},
    {'sakhnik/nvim-gdb'},
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.2', 
        dependencies = {
            'nvim-lua/plenary.nvim'
        }
    },
    {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { 
            "nvim-telescope/telescope.nvim", 
            "nvim-lua/plenary.nvim" 
        }
    },
    {'smartpde/telescope-recent-files'},
    {'lukas-reineke/indent-blankline.nvim'},
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    {
        "startup-nvim/startup.nvim",
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
        config = function()
            require('startup').setup()
        end
    },
    {'airblade/vim-rooter'}
})
