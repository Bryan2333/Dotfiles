require('nvim-treesitter.configs').setup({
    ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc" },

    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})
