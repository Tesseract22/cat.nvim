-- vim.opt.shell = 'powershell.exe'
vim.keymap.set('n', '<Leader>tn', function()
    vim.cmd("FloatermNew powershell.exe")
end, {})
vim.keymap.set({'i', 'n', 't'}, '<Leader>tt', function()
    vim.cmd("stopinsert")
    vim.cmd.FloatermToggle()
end, { noremap = true })

