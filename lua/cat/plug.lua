local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('calincru/flex-bison-syntax')
Plug('kframework/k-editor-support', {['rtp'] = 'vim' })
Plug('vim-scripts/cool.vim')
Plug('vim-utils/vim-man')
Plug('terryma/vim-multiple-cursors')
vim.call('plug#end')

