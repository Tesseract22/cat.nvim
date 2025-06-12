vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('user_lsp_attach', {clear = true}),
    callback = function(event)
	local opts = {buffer = event.buf}

	vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
	vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set('i', '<C-s>', function() vim.lsp.buf.signature_help() end, opts)
    end,
})
local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup({
    capabilities = lsp_capabilities,
    settings = {
	Lua = {
	    runtime = {
		version = 'LuaJIT'
	    },
	    diagnostics = {
		globals = {'vim'},
	    },
	    workspace = {
		library = {
		    vim.env.VIMRUNTIME,
		}
	    }
	}
    }
})
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'clangd'},
})
-- vim.lsp.config("*", {
--   capabilities = vim.lsp.protocol.make_client_capabilities()
-- })

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
    sources = cmp.config.sources({
	{name = 'nvim_lsp'},
    }, {
	{name = 'buffer'},
    }), 
    completion = {
	autocomplete = false
    }, 
    mapping = cmp.mapping.preset.insert({
	['<C-z>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-x>'] = cmp.mapping.select_next_item(cmp_select),
	['<cr>'] = cmp.mapping.confirm({select = true}),
	['<C-c>'] = cmp.mapping.complete(),				
	['<C-Space>'] = cmp.mapping.abort(),
    }),
})
require'lspconfig'.zls.setup{
    cmd = { "/home/cat/Software/dev/zls/zig-out/bin/zls"},
    log_level = vim.lsp.protocol.MessageType.Log,
    message_level = vim.lsp.protocol.MessageType.Log,
    settings = {
	zls  = {
	    -- zig_lib_path = "/home/cat/ziglang/zig/lib/",
	    -- zig_exe_path = "/home/cat/ziglang/zig/zig"
	}
    }
}
vim.g.zig_fmt_autosave = 0

