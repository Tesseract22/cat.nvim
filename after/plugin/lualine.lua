require('lualine').setup {
    options = {
	theme = 'ayu_mirage',
    },
    sections = {
	lualine_a = {'mode', 'selectioncount'},
	lualine_b = {'branch', 'diff', 'diagnostics'},
	lualine_c = {
	    {
		'filename',
		path = 3,
	    }
	},
	lualine_x = {'encoding', 'fileformat', 'filetype'},
	-- lualine_y = {'buffers'},
	lualine_z = {'progress', 'location'}
    },
}
