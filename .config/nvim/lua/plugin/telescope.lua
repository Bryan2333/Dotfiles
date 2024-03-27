require('telescope').setup{
    defaults = {
        initial_mode = "normal",
        mappings = {
            n = {
                ["<C-h>"] = "which_key"
            }
        }
    },
    pickers = {
    },
    extensions = {
        live_grep_args,
        recent_files
    }
}

local builtin = require('telescope.builtin')
local telescope = require('telescope')
keyset('n', '<leader>ff', builtin.find_files, { noremap = true, silent = true })
keyset('n', '<leader>fg', builtin.live_grep, { noremap = true, silent = true })
keyset('n', '<leader>fb', builtin.buffers, { noremap = true, silent = true })
keyset('n', '<leader>fh', builtin.help_tags, { noremap = true, silent = true })
keyset("n", "<leader>rf", telescope.extensions.recent_files.pick, { noremap = true, silent = true })
