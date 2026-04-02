require('oil').setup({
    columns = {
	"icon",
	"permissions",
	"size",
	"mtime",
    },
    buf_options = {
	buflisted = true,
	bufhidden = "",
    },
    view_options = {
	show_hidden = true
    }
})
