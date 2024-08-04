-- 设置vim前缀键
vim.g.mapleader = " " 
vim.g.maplocalleader = "\\"

-- 开启真色彩
vim.opt.termguicolors = true

-- 使用相对行号
vim.opt.number = true
vim.opt.relativenumber = true  

-- 高亮当前行
vim.opt.cursorline = true

-- 替换tab为4空格
vim.opt.expandtab = true
vim.opt.tabstop = 4       
vim.opt.shiftwidth = 4

-- 配置搜索大小写敏感
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true

-- fcitx5-remote路径
vim.g.fcitx5_remote='/usr/bin/fcitx5-remote'

-- 使用系统剪切板
vim.opt.clipboard:append('unnamedplus')

-- 设置文本折叠方式
vim.opt.foldmethod = 'marker'

-- 将PKGBUILD绑定为Bash类型
vim.cmd[[autocmd BufRead,BufNewFile PKGBUILD set filetype=sh]]

-- 高亮复制文本
vim.cmd[[autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup=(vim.fn['hlexists']('HighlightedyankRegion') > 0 and 'HighlightedyankRegion' or 'IncSearch'), timeout=300}]]
