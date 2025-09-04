vim.keymap.set('n', '<leader>R', function() vim.cmd("belowright 10 Compile") end)
vim.keymap.set('n', '<leader>r', function() vim.cmd("belowright 10 Recompile") end)
vim.keymap.set('n', '<leader>tr', function() vim.cmd("tab Recompile") end)
vim.keymap.set('n', '<leader>er', function() vim.cmd("silent FirstError") end)
vim.keymap.set('n', '<leader>ER', function()
    vim.cmd("belowright 10 Recompile")
    vim.cmd("silent FirstError")
end)
vim.g.compile_mode = {

}
