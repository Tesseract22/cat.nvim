require('cat.kepmap')
require('cat.packer')
require('cat.plug')
vim.cmd('colorscheme rose-pine')
vim.opt.shiftwidth = 4

vim.cmd("set number");
vim.cmd("set relativenumber");


-- kframework
vim.cmd('au BufRead,BufNewFile *.k set filetype=k') 
-- cool
vim.cmd('au BufRead,BufNewFile *.cl set filetype=cool') 
vim.cmd('au BufRead,BufNewFile *.ll set filetype=llvm') 
vim.cmd('au BufRead,BufNewFile *.td set filetype=tablegen') 

