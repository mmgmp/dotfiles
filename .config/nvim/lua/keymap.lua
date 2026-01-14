local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- Configuración tecla <leader>
vim.g.mapleader = ";"

-- Atajos
map('n', 'º', '@', { desc = "Activar macros" })

-- Activar corrector ortográfico
map('n', '<F6>', ':setlocal spell! spelllang=es<CR>', { desc = "Activar/desactivar el corrector ortográfico" })

-- Insertar <++> automáticos
map('i', '<leader><', '<++><ESC>A', { desc = "<++> automáticos" })

-- Saltar al siguiente <++>
map('n', '<Space><Space>', '/<++><CR>4xi', { desc = "Saltar al siguiente <++> e insertar" })

-- Centrar texto al buscar palabra
map('n', 'n', 'nzz', { desc = "Centrar el texto al usar n" })
map('n', 'N', 'Nzz', { desc = "Centrar el texto al usar N" })

-- Quitar texto resaltado
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Cierres automáticos
map('i', '(', '()<ESC>i', { desc = "(X) automáticas" })
map('i', '{', '{}<ESC>i', { desc = "{X} automáticas" })
map('i', '[', '[]<ESC>i', { desc = "[X] automáticas" })
map('i', '<', '<><ESC>i', { desc = "<X> automáticas" })
