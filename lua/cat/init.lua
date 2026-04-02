require('cat.kepmap')
require('cat.packer')
require('cat.plug')
vim.cmd('colorscheme evergarden')
require 'evergarden'.setup {
    theme = {
	variant = 'winter',
    }
}
vim.cmd('set shiftwidth=4')

vim.cmd('set number');
vim.cmd('set relativenumber');


-- kframework
vim.cmd('au BufRead,BufNewFile *.k set filetype=k')
-- cool
vim.cmd('au BufRead,BufNewFile *.cl set filetype=cool')
vim.cmd('au BufRead,BufNewFile *.ll set filetype=llvm') 
vim.cmd('au BufRead,BufNewFile *.td set filetype=tablegen')
-- cpp
vim.cmd('au BufRead,BufNewFile *.su set filetype=k')
vim.cmd('au BufRead,BufNewFile *.cpp set shiftwidth=2')
