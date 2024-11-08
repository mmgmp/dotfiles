-- Atajos
vim.keymap.set('n', 'º', '@', { desc = "Activar macros" })

-- Funciones
vim.keymap.set('n', '<F6>', ':setlocal spell! spelllang=es<CR>', { desc = "Activar/desactivar el corrector ortográfico" })

-- Navegación
vim.keymap.set('n', '<Space><Space>', '/<++><CR>4xi', { desc = "Saltar al siguiente <++> e insertar" })
vim.keymap.set('n', '<left>', '<cmd>echo "Usa h para moverte!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Usa l para moverte!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Usa k para moverte!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Usa j para moverte!!"<CR>')

-- Cierres automáticos
vim.keymap.set('i', '(', '()<ESC>i', { desc = "(X) automáticas" })
vim.keymap.set('i', '{', '{}<ESC>i', { desc = "{X} automáticas" })
vim.keymap.set('i', '[', '[]<ESC>i', { desc = "[X] automáticas" })
vim.keymap.set('i', '<', '<><ESC>i', { desc = "<X> automáticas" })

-- LaTeX
vim.keymap.set('i', ';bf', '\\textbf{}<ESC>i', { desc = "Insertar \textbf{}" })
vim.keymap.set('i', ';it', '\\textit{}<ESC>i', { desc = "Insertar \textit{}" })
vim.keymap.set('i', ';fi', '\\begin{figure}[<++>]<CR>\\centering<CR>\\includegraphics[width=<++>\\textwidth]{img/<++>.png}<CR>\\caption{<++>}<CR>\\label{<++>}<CR>\\end{figure}<ESC>5k0', { desc = "Insertar figura y sus complementos" })

