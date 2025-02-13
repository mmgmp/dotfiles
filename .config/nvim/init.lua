local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
vim.call('plug#end')

-- Core
require("core/config")
require("core/keymap")
require("core/filetype/tex")

-- Plugins
