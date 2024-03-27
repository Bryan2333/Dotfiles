require('nvim-treesitter.configs').setup({
    ensure_installed = { "c", "cpp", "lua", "vim", "json", "javascript" },

    sync_install = true,

    auto_install = false,

    highlight = {
        enable = true,
    }
})
