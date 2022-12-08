
"                               D A R C U L A
"      _..._         _..._         _..._         _..._         _..._
"    .:::::::.     .::::. `.     .::::  `.     .::'   `.     .'     `.
"   :::::::::::   :::::::.  :   ::::::    :   :::       :   :         :
"   :::::::::::   ::::::::  :   ::::::    :   :::       :   :         :
"   `:::::::::'   `::::::' .'   `:::::   .'   `::.     .'   `.       .'
"     `':::''       `'::'-'       `'::.-'       `':..-'       `-...-'
"
" Colorscheme name:    darcula.nvim
" Description:         Port of darcula form a fork of VSCode's Moonlight colorscheme for NeoVim
" Author:              https://github.com/Hierosme

lua << EOF
package.loaded['darcula'] = nil
package.loaded['darcula.util'] = nil
package.loaded['darcula.colors'] = nil
package.loaded['darcula.theme'] = nil
package.loaded['darcula.functions'] = nil

require('darcula').set()
EOF
