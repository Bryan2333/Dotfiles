keyset('n', '<C-t>', ':Neotree toggle reveal<CR>', { noremap = true, silent = true })

require('neo-tree').setup({
    default_component_configs = {
        icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "󰜌",
            default = "*",
            highlight = "NeoTreeFileIcon"
        },
        git_status = {
            symbols = {
              -- Change type
              added     = "✚",
              modified  = "",
              deleted   = "✖",
              renamed   = "󰁕",
              -- Status type
              untracked = "",
              ignored   = "",
              unstaged  = "󰄱",
              staged    = "",
              conflict  = "",
            }
        }
    },
    window = {
        width = 35,
        mappings = {
            ["o"] = "open",
            ["c"] = "close_node",
            ["C"] = "set_root"
        }
    },
    filesystem = {
        filtered_items = {
            visible = false
        },
        window = {
            mappings = {
                ["<C-h>"] = "toggle_hidden"
            }
        }
    },
    event_handlers = {
        {
            event = "file_opened",
            handler = function(file_path)
                require("neo-tree.command").execute({ action = "close" })
            end
        }
    }
})
