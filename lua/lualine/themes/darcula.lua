local colors = require('darcula.colors')

local darcula = {}

darcula.normal = {
	a = {fg = colors.bg, bg = colors.ANSIWhite, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
	c = {fg = colors.fg, bg = colors.selection},
}

darcula.insert = {
	a = {fg = colors.bg, bg = colors.ANSIBrightGreen, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

darcula.visual = {
	a = {fg = colors.bg, bg = colors.ANSIBrightBlue, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

darcula.replace = {
	a = {fg = colors.bg, bg = colors.ANSIBrightRed, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

darcula.command = {
	a = {fg = colors.bg, bg = colors.ANSIBrightYellow, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

darcula.inactive = {
  a = {fg = colors.disabled, bg = colors.bg, gui = 'bold'},
  b = {fg = colors.disabled, bg = colors.bg},
  c = {fg = colors.disabled, bg = colors.selection}
}

return darcula
