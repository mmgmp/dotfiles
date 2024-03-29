function map(m, k, v)
    vim.api.nvim_set_keymap(m, k, v, { noremap = true, silent = true })
end

-- General
map('n', '<SPACE><SPACE>', '<ESC>/<++><ENTER>4xi')

-- LaTeX
map('i', ';fi', '\\begin{figure}[<++>]<ENTER>\\centering<ENTER>\\includegraphics[width=<++>\\textwidth]{img/<++>.png}<ENTER>\\caption{<++>}<ENTER>\\label{<++>}<ENTER>\\end{figure}<ESC>5kB')
map('i', ';li', '\\begin{itemize}<ENTER>\\end{itemize}<ESC>ko<TAB>')
map('i', ';it', '\\item<SPACE><ESC>A')
map('i', ';se', '\\section{}<ESC>i')
map('i', ';su', '\\subsection{}<ESC>i')
map('i', ';ssu', '\\subsubsection{}<ESC>i')
map('i', ';pk', '\\usepackage{}<ESC>i')
