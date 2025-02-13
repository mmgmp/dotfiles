local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- Configuración tecla <leader>
vim.g.mapleader = ";"

-- Atajos
map('n', 'º', '@', { desc = "Activar macros" })

-- Compilador
map('n', '<leader>c', ':! compiler %<CR>', { desc = "Compilar archivo dependiendo de la extensión" })

-- Funciones
map('n', '<F6>', ':setlocal spell! spelllang=es<CR>', { desc = "Activar/desactivar el corrector ortográfico" })

-- Navegación
map('n', '<Space><Space>', '/<++><CR>4xi', { desc = "Saltar al siguiente <++> e insertar" })
map('n', 'n', 'nzz', { desc = "Centrar el texto al usar n" })
map('n', 'N', 'Nzz', { desc = "Centrar el texto al usar N" })
map('n', '<left>', '<cmd>echo "Usa h para moverte!!"<CR>')
map('n', '<right>', '<cmd>echo "Usa l para moverte!!"<CR>')
map('n', '<up>', '<cmd>echo "Usa k para moverte!!"<CR>')
map('n', '<down>', '<cmd>echo "Usa j para moverte!!"<CR>')

-- Cierres automáticos
map('i', '(', '()<ESC>i', { desc = "(X) automáticas" })
map('i', '{', '{}<ESC>i', { desc = "{X} automáticas" })
map('i', '[', '[]<ESC>i', { desc = "[X] automáticas" })
map('i', '<', '<><ESC>i', { desc = "<X> automáticas" })

