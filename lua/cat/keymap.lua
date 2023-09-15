vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- move cursor the start and end of line
vim.keymap.set('i', "<M-a>", "<Esc>I", {})
vim.keymap.set({'v', 'n'}, "<M-a>", "0", {})

vim.keymap.set('i', "<M-d>", "<Esc>A", {})
vim.keymap.set({'v', 'n'}, "<M-d>", "$", {})
-- copy & paste
vim.keymap.set('i', "<C-c>", "<C-o>y", {})
vim.keymap.set('i', "<C-v>", "<C-o>p", {})
vim.keymap.set('i', "<C-c><C-c>", "<Esc>yyi", {})
vim.keymap.set('i', "<C-x>", "<Esc>ddi", {})


vim.keymap.set({'n', 'v'}, "<C-c>", "y", {})
vim.keymap.set({'n', 'v'}, "<C-v>", "p", {})
vim.keymap.set({'n', 'v'}, "<C-c><C-c>", "yy", {})
vim.keymap.set({'n', 'v'}, "<C-x>", "dd", {})
-- moving cursor
vim.keymap.set('i', "<M-j>", "<Left>", {})
vim.keymap.set('i', "<M-l>", "<Right>", {})
vim.keymap.set('i', "<M-i>", "<Up>", {})
vim.keymap.set('i', "<M-k>", "<Down>", {})

vim.keymap.set({'n', 'v'}, "j", "<Left>", {})
vim.keymap.set({'n', 'v'}, "l", "<Right>", {})
vim.keymap.set({'n', 'v'}, "i", "<Up>", {})
vim.keymap.set({'n', 'v'}, "k", "<Down>", {})

vim.keymap.set('i', "<M-s>", "<C-right>", {})
vim.keymap.set('i', "<M-w>", "<C-left>", {})
--mode hange
--
vim.keymap.set({'n', 'i'}, "<C-q>", "<Esc>v", {})
vim.keymap.set({'n', 'i'}, "<C-w>", "<Esc><C-v>", {})
vim.keymap.set({'n', 'v'}, "<Space>", "i", {})

vim.keymap.set('i', "<C-z>", "<C-o>U", {})



