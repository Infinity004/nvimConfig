vim.cmd("set expandtab shiftwidth=4 tabstop=4 softtabstop=4 nu")
vim.g.mapleader = " "


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
vim.cmd.colorscheme "everforest"

vim.keymap.set('n', '<C-n>', '<Cmd>Neotree toggle<CR>')

require("lazy").setup({{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}})

require("mason").setup()
