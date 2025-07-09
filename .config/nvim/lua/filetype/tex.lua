-- Configuración para documentos LaTeX
local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = "tex",
    callback = function()
        local opts = { buffer = true, silent = true }
        
		map('i', '<leader>bf', '\\textbf{}<ESC>i', { desc = "Insertar \textbf{}" })
		map('i', '<leader>it', '\\textit{}<ESC>i', { desc = "Insertar \textit{}" })
		map('i', '<leader>fi', '\\begin{figure}[<++>]<CR>\\centering<CR>\\includegraphics[width=<++>\\textwidth]{img/<++>.png}<CR>\\caption{<++>}<CR>\\label{<++>}<CR>\\end{figure}<ESC>5k0', { desc = "Insertar figura y sus complementos" })
    end,
})
