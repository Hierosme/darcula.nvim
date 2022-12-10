local colors = require('darcula.colors')

local darcula = {}

darcula.normal = {
	a = {fg = colors.bg, bg = colors.ANSIDarkGray },
	b = {fg = colors.bg, bg = colors.ANSIDarkGray },
	c = {fg = colors.menuFg, bg = colors.menu},
}

darcula.insert = {
	a = {fg = colors.bg, bg = colors.UIGreen },
	b = {fg = colors.bg, bg = colors.UIGreen },
}

darcula.visual = {
	a = {fg = colors.bg, bg = colors.UIBlue },
	b = {fg = colors.bg, bg = colors.UIBlue },
}

darcula.replace = {
	a = {fg = colors.bg, bg = colors.UIRed },
	b = {fg = colors.bg, bg = colors.UIRed },
}

darcula.command = {
	a = {fg = colors.bg, bg = colors.ANSIBrightYellow , gui = 'bold'},
	b = {fg = colors.bg, bg = colors.ANSIBrightYellow , gui = 'bold'},
}

darcula.inactive = {
  a = {fg = colors.menuFg, bg = colors.menu, gui = 'bold'},
  b = {fg = colors.menuFg, bg = colors.menu},
  c = {fg = colors.menuFg, bg = colors.menu}
}
return darcula
