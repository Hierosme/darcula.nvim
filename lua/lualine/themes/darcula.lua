local colors = require('darcula.colors')

local darcula = {}

darcula.normal = {
	a = {fg = colors.menuFg, bg = colors.ANSIDarkGray, gui = 'bold'},
	b = {fg = colors.menuFg, bg = colors.ANSIDarkGray, gui = 'bold'},
	c = {fg = colors.menuFg, bg = colors.menu},
}

darcula.insert = {
	a = {fg = colors.bg, bg = colors.ANSIBrightGreen, gui = 'bold'},
	b = {fg = colors.bg, bg = colors.ANSIBrightGreen, gui = 'bold'},
}

darcula.visual = {
	a = {fg = colors.bg, bg = colors.ANSIBrightBlue, gui = 'bold'},
	b = {fg = colors.bg, bg = colors.ANSIBrightBlue, gui = 'bold'},
}

darcula.replace = {
	a = {fg = colors.bg, bg = colors.ANSIBrightRed, gui = 'bold'},
	b = {fg = colors.bg, bg = colors.ANSIBrightRed, gui = 'bold'},
}

darcula.command = {
	a = {fg = colors.bg, bg = colors.ANSIBrightYellow, gui = 'bold'},
	b = {fg = colors.bg, bg = colors.ANSIBrightYellow, gui = 'bold'},
}

darcula.inactive = {
  a = {fg = colors.menuFg, bg = colors.menu, gui = 'bold'},
  b = {fg = colors.menuFg, bg = colors.menu},
  c = {fg = colors.menuFg, bg = colors.menu}
}
return darcula
