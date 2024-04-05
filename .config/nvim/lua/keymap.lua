vim.keymap.set('n', '<Space><Space>', '/<++><CR>4xi', { desc = "Saltar al siguiente <++> y insertar" })
vim.keymap.set('', '<CapsLock>', '<ESC>', { desc = "Convertir BloqMayús en Esc" })

vim.keymap.set('n', '<left>', '<cmd>echo "Usa h para moverte!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Usa l para moverte!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Usa k para moverte!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Usa j para moverte!!"<CR>')

