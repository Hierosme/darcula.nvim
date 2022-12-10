local colors = require('darcula.colors')

local darcula = {}

darcula.normal = {
	a = {fg = colors.fg, bg = colors.bg , gui = 'bold'},
	b = {fg = colors.fg, bg = colors.bg , gui = 'bold'},
	c = {fg = colors.menuFg, bg = colors.menu},
}

darcula.insert = {
	a = {fg = colors.bg, bg = colors.UIGreen , gui = 'bold'},
	b = {fg = colors.bg, bg = colors.UIGreen , gui = 'bold'},
}

darcula.visual = {
	a = {fg = colors.bg, bg = colors.UIBlue , gui = 'bold'},
	b = {fg = colors.bg, bg = colors.UIBlue , gui = 'bold'},
}

darcula.replace = {
	a = {fg = colors.bg, bg = colors.UIRed , gui = 'bold'},
	b = {fg = colors.bg, bg = colors.UIRed , gui = 'bold'},
}

darcula.command = {
	a = {fg = colors.bg, bg = colors.UIBrown , gui = 'bold'},
	b = {fg = colors.bg, bg = colors.UIBrown , gui = 'bold'},
}

darcula.inactive = {
  a = {fg = colors.menuFg, bg = colors.menu, gui = 'bold'},
  b = {fg = colors.menuFg, bg = colors.menu},
  c = {fg = colors.menuFg, bg = colors.menu}
}
return darcula
