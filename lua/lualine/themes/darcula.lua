local colors = require('darcula.colors')

local darcula = {}

darcula.normal = {
	a = {fg = colors.bg, bg = colors.ANSIWhite, gui = 'bold'},
	b = {fg = colors.blue, bg = colors.menu},
	c = {fg = colors.fg, bg = colors.menu},
}

darcula.insert = {
	a = {fg = colors.menu, bg = colors.ANSIBrightGreen, gui = 'bold'},
	b = {fg = colors.title, bg = colors.menu},
}

darcula.visual = {
	a = {fg = colors.menu, bg = colors.ANSIBrightBlue, gui = 'bold'},
	b = {fg = colors.menuFg, bg = colors.menu},
}

darcula.replace = {
	a = {fg = colors.menu, bg = colors.ANSIBrightRed, gui = 'bold'},
	b = {fg = colors.menuFg, bg = colors.menu},
}

darcula.command = {
	a = {fg = colors.bg, bg = colors.ANSIBrightYellow, gui = 'bold'},
	b = {fg = colors.menuFg, bg = colors.menu},
}

darcula.inactive = {
  a = {fg = colors.disabled, bg = colors.menu, gui = 'bold'},
  b = {fg = colors.disabled, bg = colors.menu},
  c = {fg = colors.disabled, bg = colors.menu}
}
return darcula
