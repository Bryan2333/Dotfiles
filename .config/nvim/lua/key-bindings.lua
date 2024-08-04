-- 当光标一段时间保持不动了，就禁用高亮
vim.cmd[[autocmd cursorhold * set nohlsearch]]

-- 当输入查找命令时，再启用高亮
keyset('n', '/', ':set hlsearch<CR>/', { noremap = true, silent = true })
keyset('n', '?', ':set hlsearch<CR>?', { noremap = true, silent = true })
keyset('n', '*', '*:set hlsearch<CR>', { noremap = true, silent = true })

-- 终端
keyset('n', 'tt', ':tabnew | term<CR>', { noremap = true, silent = true })

-- tab之间切换
keyset('n', '<A-h>', ':tabprevious<CR>', { noremap = true, silent = true })
keyset('n', '<A-l>', ':tabnext<CR>',     { noremap = true, silent = true })
