local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- Configuración tecla <leader>
vim.g.mapleader = ";"

-- Atajos
map('n', 'º', '@', { desc = "Activar macros" })

-- Funciones
map('n', '<F6>', ':setlocal spell! spelllang=es<CR>', { desc = "Activar/desactivar el corrector ortográfico" })
map('i', '<leader><', '<++><ESC>A', { desc = "<++> automáticos" })

-- Navegación
map('n', '<Space><Space>', '/<++><CR>4xi', { desc = "Saltar al siguiente <++> e insertar" })
map('n', 'n', 'nzz', { desc = "Centrar el texto al usar n" })
map('n', 'N', 'Nzz', { desc = "Centrar el texto al usar N" })

-- Cierres automáticos
map('i', '(', '()<ESC>i', { desc = "(X) automáticas" })
map('i', '{', '{}<ESC>i', { desc = "{X} automáticas" })
map('i', '[', '[]<ESC>i', { desc = "[X] automáticas" })
map('i', '<', '<><ESC>i', { desc = "<X> automáticas" })
