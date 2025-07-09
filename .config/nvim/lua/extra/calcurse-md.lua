-- Tratar las notas de calcurse como markdown
vim.api.nvim_create_autocmd("BufRead", {
  pattern = "/tmp/calcurse*",
  callback = function()
    vim.bo.filetype = "markdown"
  end
})
