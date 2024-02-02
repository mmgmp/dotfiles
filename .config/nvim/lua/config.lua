-- Números de lineas
vim.wo.number = true

-- Números relativos
vim.wo.relativenumber = true

-- Número de espacios de tabulador
vim.o.tabstop = 4

-- Número de espacios automáticos
vim.o.shiftwidth = 4

-- Número de espacios cuando se usa <BS> o <Del>
vim.o.softtabstop = 4

-- Activar corrector
vim.opt.spelllang = 'es'
vim.opt.spell = true

-- Subrayar mal escritas
vim.cmd([[highlight clear SpellBad]])
vim.cmd([[highlight SpellBad cterm=underline gui=underline]])
