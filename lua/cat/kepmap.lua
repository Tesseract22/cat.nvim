vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
vim.keymap.set('n', 'Y', ':let @* = expand("%")<cr>', { desc = "Copy file path" })
local function toggle_trailing_whitespace()
  -- Check if the window-local variable exists and is true
  if vim.w.trailing_whitespace_enabled then
    -- Disable highlighting
    vim.cmd('match none')
    vim.w.trailing_whitespace_enabled = false
    print('Trailing whitespace highlighting disabled')
  else
    -- Enable highlighting
    vim.cmd('highlight ExtraWhitespace ctermbg=red guibg=red')
    vim.cmd('match ExtraWhitespace /\\s\\+$/')
    vim.w.trailing_whitespace_enabled = true
    print('Trailing whitespace highlighting enabled')
  end
end

-- Create the mapping
vim.keymap.set('n', '<leader><space>', toggle_trailing_whitespace,
  { noremap = true, silent = true, desc = 'Toggle trailing whitespace highlight' }
)
