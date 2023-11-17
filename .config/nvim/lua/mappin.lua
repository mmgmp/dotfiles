function map(m, k, v)
    vim.api.nvim_set_keymap(m, k, v, { noremap = true, silent = true })
end

-- General
map('n', '<SPACE><SPACE>', '/(<>)<ENTER>4xi')

-- LaTeX
map('i', ';ex', '\\exists')
map('i', ';fi', '\\begin{figure}[(<>)]<ENTER>\\centering<ENTER>\\includegraphics[width=(<>)\\textwidth]{img/(<>).png}<ENTER>\\caption{(<>)}<ENTER>\\label{(<>)}<ENTER><ESC>i\\end{figure}<ESC>5kB')
map('i', ';li', '\\begin{itemize}<ENTER><ENTER>\\end{itemize}<ESC>ki<TAB>')
