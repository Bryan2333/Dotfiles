vim.g.VM_mouse_mappings = 1

keyset('n', '<C-LeftMouse>',    '<Plug>(VM-Mouse-Cursor)', { noremap = true, silent = true })
keyset('n', '<C-RightMouse>',   '<Plug>(VM-Mouse-Word)',   { noremap = true, silent = true })
keyset('n', '<M-C-RightMouse>', '<Plug>(VM-Mouse-Column)', { noremap = true, silent = true })
