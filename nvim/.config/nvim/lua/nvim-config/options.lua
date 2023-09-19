vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true
vim.opt.clipboard:append('unnamedplus')
vim.opt.foldmethod='marker'
vim.cmd('filetype plugin on')
vim.cmd('syntax on')
vim.cmd('autocmd cursorhold * set nohlsearch')
vim.cmd[[au TextYankPost * silent! lua vim.highlight.on_yank({"IncSearch", 5000})]]
