require('nvim-treesitter.configs').setup({
    ensure_installed = { "bash", "c", "cpp", "json", "javascript", "lua", "python", "vim"},

    sync_install = true,

    auto_install = false,

    highlight = {
        enable = true,
    }
})
