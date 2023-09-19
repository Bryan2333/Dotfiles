-- Improve search
keyset('n', '/', ':set hlsearch<CR>/', { noremap = true, silent = true })
keyset('n', '?', ':set hlsearch<CR>?', { noremap = true, silent = true })
keyset('n', '*', '*:set hlsearch<CR>', { noremap = true, silent = true })

-- Compile and run
keyset('n', '<F9>', ':lua CompileAndRunCxx()<CR>', { noremap = true, silent = true })

-- Open new tab
keyset('n', 'tt', ':tabnew | term<CR>', { noremap = true, silent = true })

-- Switch tabs
keyset('n', '<A-h>', ':tabprevious<CR>', { noremap = true, silent = true })
keyset('n', '<A-l>', ':tabnext<CR>', { noremap = true, silent = true })

-- Vim-Rooter
keyset('n', 'cd', ':Rooter<CR>', { noremap = true, silent = true })
