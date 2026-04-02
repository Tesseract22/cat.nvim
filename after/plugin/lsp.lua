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
local lsp = vim.lsp
lsp.config('lua_ls', {
    -- capabilities = lsp_capabilities,
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
lsp.enable('lua_ls')

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

local zls = require('cat.zls')
lsp.config('zls', {
    cmd = { zls.zls_path },
    zig_exe_path = "zig",
    -- log_level = vim.lsp.protocol.MessageType.Log,
    -- message_level = vim.lsp.protocol.MessageType.Log,
})
lsp.enable('zls')
vim.g.zig_fmt_autosave = 0

lsp.config('clangd', {})
lsp.enable('clangd')

lsp.config('hls', {
    cmd = { "haskell-language-server-wrapper", "--lsp" },
    ghc_version = "9.5"
})
lsp.enable('hls')

lsp.config('pylsp', {})
lsp.enable('pylsp')

local vue_language_server_path = vim.fn.expand("$MASON/packages/vue-language-server/node_modules/@vue/language-server")
local tsserver_filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' }
local vue_plugin = {
  name = '@vue/typescript-plugin',
  location = vue_language_server_path,
  languages = { 'vue' },
  configNamespace = 'typescript',
}
local vtsls_config = {
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = {
          vue_plugin,
        },
      },
    },
  },
  filetypes = tsserver_filetypes,
}

local ts_ls_config = {
  init_options = {
    plugins = {
      vue_plugin,
    },
  },
  filetypes = tsserver_filetypes,
}

-- If you are on most recent `nvim-lspconfig`
local vue_ls_config = {}

-- If using vtsls
lsp.config('vtsls', vtsls_config)
lsp.enable('vtsls')
-- If using ts_ls
lsp.config('ts_ls', ts_ls_config)
lsp.enable('ts_ls')
lsp.config('volar', vue_ls_config)
lsp.enable('volar')


lsp.config('rust_analyzer', {})
lsp.enable('rust_analyzer')
