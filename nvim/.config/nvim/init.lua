-- load lazy.nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
keyset = vim.keymap.set

-- load lua config
require('nvim-config/options')
require('nvim-config/plugins')
require('nvim-config/keymaps')
require('nvim-config/functions')
require('plugin-config/coc-nvim')
require('plugin-config/indent-blackline')
require('plugin-config/lualine-nvim')
require('plugin-config/nvim-gdb')
require('plugin-config/nvim-neo-tree')
require('plugin-config/nvim-treesitter')
require('plugin-config/telescope-nvim')
require('plugin-config/vim-clang-format')
require('plugin-config/vim-rooter')

-- load colorscheme
vim.cmd("colorscheme onedark_vivid")
