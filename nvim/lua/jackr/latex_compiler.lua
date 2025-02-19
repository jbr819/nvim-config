vim.keymap.set('n', '<leader>l', function()
  vim.cmd('w')  -- Save the file
  vim.cmd('!pdflatex %  > /dev/null 2>&1')  -- Run pdflatex on the current file
end, { silent = true })
