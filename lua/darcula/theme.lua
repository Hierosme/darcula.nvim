local darcula = require("darcula.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = darcula.purple }, -- int, long, char, etc.
		StorageClass =				{ fg = darcula.cyan }, -- static, register, volatile, etc.
		Structure =					{ fg = darcula.puple }, -- struct, union, enum, etc.
		Constant =					{ fg = darcula.yellow }, -- any constant
		String =					{ fg = darcula.green, bg = darcula.none, style= 'italic' }, -- Any string
		Character =					{ fg = darcula.orange }, -- any character constant: 'c = { fg='\n'
		Number =					{ fg = darcula.number }, -- a number constant: 5
		Boolean =					{ fg = darcula.orange }, -- a boolean constant: TRUE, false
		Float =						{ fg = darcula.orange }, -- a floating point constant: 2.3e10
		Statement =					{ fg = darcula.pink }, -- any statement
		Label =						{ fg = darcula.purple }, -- case, default, etc.
		Operator =					{ fg = darcula.cyan }, -- sizeof", "+", "*", etc.
		Exception =					{ fg = darcula.cyan }, -- try, catch, throw
		PreProc =					{ fg = darcula.purple }, -- generic Preprocessor
		Include =					{ fg = darcula.blue }, -- preprocessor #include
		-- Define =					{ fg = darcula.pink }, -- preprocessor #define
		Macro =						{ fg = darcula.cyan }, -- same as Define
		Typedef =					{ fg = darcula.red }, -- A typedef
		PreCondit =					{ fg = darcula.cyan }, -- preprocessor #if, #else, #endif, etc.
		Special =					{ fg = darcula.red }, -- any special symbol
		SpecialChar =				{ fg = darcula.pink }, -- special character in a constant
		Tag =						{ fg = darcula.red }, -- you can use CTRL-] on this
		Delimiter =					{ fg = darcula.cyan }, -- character that needs attention like , or .
		SpecialComment =			{ fg = darcula.gray }, -- special things inside a comment
		Debug =						{ fg = darcula.red }, -- debugging statements
		Underlined =				{ fg = darcula.link, bg = darcula.none, style = 'underline' }, -- text that stands out, HTML links
		Ignore =					{ fg = darcula.disabled }, -- left blank, hidden
		Error =						{ fg = darcula.error, bg = darcula.none, style = 'bold,underline' }, -- any erroneous construct
		Todo =						{ fg = darcula.yellow, bg = darcula.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        htmlLink = { fg = darcula.link, style = "underline" },
        htmlH1 = { fg = darcula.cyan, style = "bold" },
        htmlH2 = { fg = darcula.red, style = "bold" },
        htmlH3 = { fg = darcula.green, style = "bold" },
        htmlH4 = { fg = darcula.yellow, style = "bold" },
        htmlH5 = { fg = darcula.purple, style = "bold" },
        markdownH1 = { fg = darcula.cyan, style = "bold" },
        markdownH2 = { fg = darcula.red, style = "bold" },
        markdownH3 = { fg = darcula.green, style = "bold" },
        markdownH1Delimiter = { fg = darcula.cyan },
        markdownH2Delimiter = { fg = darcula.red },
        markdownH3Delimiter = { fg = darcula.green },
	}

	-- Options:

	-- Italic comments
	if vim.g.darcula_italic_comments == true then
		syntax.Comment =		{fg = darcula.comments, bg = darcula.none, style = 'italic'} -- italic comments
	else
		syntax.Comment =		{fg = darcula.comments} -- normal comments
	end

	-- Italic Keywords
	if vim.g.darcula_italic_keywords == true then
		syntax.Conditional =	{fg = darcula.purple, bg = darcula.none, style = 'italic'} -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = darcula.purple, bg = darcula.none, style = 'italic'} -- italic for, do, while, etc.
		syntax.Repeat =				{fg = darcula.purple, bg = darcula.none, style = 'italic'} -- italic any other keyword
	else
		syntax.Conditional =	{fg = darcula.purple} -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = darcula.purple} -- normal for, do, while, etc.
		syntax.Repeat =				{fg = darcula.purple} -- normal any other keyword
	end

	-- Italic Function names
	if vim.g.darcula_italic_functions == true then
		syntax.Function =		{fg = darcula.blue, bg = darcula.none, style = 'italic'} -- italic funtion names
	else
		syntax.Function =		{fg = darcula.blue} -- normal function names
	end

	if vim.g.darcula_italic_variables == true then
		Identifier =				{fg = darcula.gray, bg = darcula.none, style = 'italic'}; -- any variable name
    else
		Identifier =				{fg = darcula.gray}; -- any variable name
    end

    return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

	local editor = {
		NormalFloat =			  { fg = darcula.fg, bg = darcula.float }, -- normal text and background color
		ColorColumn =			  { fg = darcula.none, bg = darcula.wrapGuide }, --  used for the columns set with 'colorcolumn'
		Conceal =				    { fg = darcula.muted, bg = darcula.bg }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				    { fg = darcula.cursor, bg = darcula.none }, -- the character under the cursor
		CursorIM =				  { fg = darcula.cursor, bg = darcula.none }, -- like Cursor, but used when in IME mode
		Directory =				  { fg = darcula.blue, bg = darcula.none }, -- directory names (and other special names in listings)
		DiffAdd =				    { fg = darcula.green, bg = darcula.none, style = 'reverse' }, -- diff mode: Added line
		DiffChange =			  { fg = darcula.orange, bg = darcula.none, style = 'reverse' }, --  diff mode: Changed line
		DiffDelete =			  { fg = darcula.red, bg = darcula.none, style = 'reverse' }, -- diff mode: Deleted line
		DiffText =				  { fg = darcula.yellow, bg = darcula.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
		EndOfBuffer =			  { fg = darcula.disabled },
		ErrorMsg =				  { fg = darcula.none },
		Folded =				    { fg = darcula.disabled, bg = darcula.none, style = 'italic' },
		FoldColumn =			  { fg = darcula.blue },
		IncSearch =				  { fg = darcula.highlight, bg = darcula.white, style = 'reverse' },
		LineNr =				    { fg = darcula.line_numbers },
		CursorLineNr =		  { fg = darcula.accent },
		MatchParen =			  { fg = darcula.yellow, bg = darcula.none, style = 'bold' },
		ModeMsg =				    { fg = darcula.accent },
		MoreMsg =				    { fg = darcula.accent },
		NonText =				    { fg = darcula.disabled },
		Pmenu =					    { fg = darcula.text, bg = darcula.contrast },
		PmenuSel =				  { fg = darcula.accent, bg = darcula.active },
		PmenuSbar =				  { fg = darcula.text, bg = darcula.contrast },
		PmenuThumb =			  { fg = darcula.fg, bg = darcula.accent },
		Question =				  { fg = darcula.green },
		QuickFixLine =		  { fg = darcula.highlight, bg = darcula.white, style = 'reverse' },
		qfLineNr =				  { fg = darcula.highlight, bg = darcula.white, style = 'reverse' },
		Search =				    { fg = darcula.highlight, bg = darcula.white, style = 'reverse' },
		SpecialKey =			  { fg = darcula.purple },
		SpellBad =				  { fg = darcula.red, bg = darcula.none, style = 'italic,undercurl' },
		SpellCap =				  { fg = darcula.blue, bg = darcula.none, style = 'italic,undercurl' },
		SpellLocal =			  { fg = darcula.cyan, bg = darcula.none, style = 'italic,undercurl' },
		SpellRare =				  { fg = darcula.purple, bg = darcula.none, style = 'italic,undercurl' },
		StatusLine =			  { fg = darcula.fg, bg = darcula.contrast },
		StatusLineNC =  		{ fg = darcula.text, bg = darcula.disabled },
		StatusLineTerm =		{ fg = darcula.fg, bg = darcula.contrast },
		StatusLineTermNC =	{ fg = darcula.text, bg = darcula.disabled },
		TabLineFill =			  { fg = darcula.fg },
		TablineSel =			  { fg = darcula.bg, bg = darcula.accent },
		Tabline =				    { fg = darcula.fg },
		Title =					    { fg = darcula.green, bg = darcula.none, style = 'bold' },
		Visual =				    { fg = darcula.none, bg = darcula.selection },
		VisualNOS =				  { fg = darcula.none, bg = darcula.selection },
		WarningMsg =			  { fg = darcula.yellow },
		WildMenu =				  { fg = darcula.orange, bg = darcula.none, style = 'bold' },
		CursorColumn =		  { fg = darcula.none, bg = darcula.active },
		CursorLine =			  { fg = darcula.none, bg = darcula.none },
		ToolbarLine =			  { fg = darcula.fg, bg = darcula.bg_alt },
		ToolbarButton =			{ fg = darcula.fg, bg = darcula.none, style = 'bold' },
		NormalMode =			  { fg = darcula.accent, bg = darcula.none, style = 'reverse' },
		InsertMode =			  { fg = darcula.green, bg = darcula.none, style = 'reverse' },
		ReplacelMode =			{ fg = darcula.red, bg = darcula.none, style = 'reverse' },
		VisualMode =			  { fg = darcula.purple, bg = darcula.none, style = 'reverse' },
		CommandMode =			  { fg = darcula.gray, bg = darcula.none, style = 'reverse' },
		Warnings =				  { fg = darcula.yellow },
    healthError =       { fg = darcula.error },
    healthSuccess =     { fg = darcula.green },
    healthWarning =     { fg = darcula.yellow },
    -- Dashboard
    DashboardShortCut = { fg = darcula.blue },
    DashboardHeader =   { fg = darcula.red },
    DashboardCenter =   { fg = darcula.cyan },
    DashboardFooter =   { fg = darcula.green, style = "italic" },

	}

    -- Options:

    --Set transparent background
    if vim.g.darcula_disable_background == true then
		editor.Normal =				{ fg = darcula.fg, bg = darcula.none } -- normal text and background color
		editor.SignColumn =			{ fg = darcula.fg, bg = darcula.none }
    else
		editor.Normal =				{ fg = darcula.fg, bg = darcula.bg } -- normal text and background color
		editor.SignColumn =			{ fg = darcula.fg, bg = darcula.bg }
    end

    -- Remove window split borders
    if vim.g.darcula_borders == true then
		editor.VertSplit =				{ fg = darcula.border }
    else
		editor.VertSplit =				{ fg = darcula.bg }
    end

    return editor
end

theme.loadTerminal = function ()

	vim.g.terminal_color_0 = darcula.ANSIBlack
	vim.g.terminal_color_1 = darcula.ANSIRed
	vim.g.terminal_color_2 = darcula.ANSIGreen
	vim.g.terminal_color_3 = darcula.ANSIYellow
	vim.g.terminal_color_4 = darcula.ANSIBlue
	vim.g.terminal_color_5 = darcula.ANSIMagenta
	vim.g.terminal_color_6 = darcula.ANSICyan
	vim.g.terminal_color_7 = darcula.ANSIGray
	vim.g.terminal_color_8 = darcula.ANSIDarkGray
	vim.g.terminal_color_9 = darcula.ANSIBrightRed
	vim.g.terminal_color_10 = darcula.ANSIBrightGreen
	vim.g.terminal_color_11 = darcula.ANSIBrightYellow
	vim.g.terminal_color_12 = darcula.ANSIBrightBlue
	vim.g.terminal_color_13 = darcula.ANSIBrightMagenta
	vim.g.terminal_color_14 = darcula.ANSIBrightCyan
	vim.g.terminal_color_15 = darcula.ANSIWhite

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

    local treesitter = {
        TSAnnotation =              { fg = darcula.red },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        TSAttribute =               { fg = darcula.yellow },    -- (unstable) TODO: docs
        TSBoolean=                  { fg = darcula.orange },    -- For booleans.
        TSCharacter=                { fg = darcula.orange },    -- For characters.
        TSConstructor =             { fg = darcula.purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstant =                { fg = darcula.yellow },    -- For constants
        TSConstBuiltin =            { fg = darcula.blue },    -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro =              { fg = darcula.blue },    -- For constants that are defined by macros: `NULL` in C.
        TSError =                   { fg = darcula.error },    -- For syntax/parser errors.
        TSException =               { fg = darcula.yellow },    -- For exception related keywords.
        TSField =                   { fg = darcula.gray }, -- For fields.
        TSFloat =                   { fg = darcula.red },    -- For floats.
        TSFuncMacro =               { fg = darcula.blue },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude =                 { fg = darcula.cyan },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSLabel =                   { fg = darcula.red }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace =               { fg = darcula.yellow },    -- For identifiers referring to modules and namespaces.
        --TSNone =                    { },    -- TODO: docs
        TSNumber =                  { fg = darcula.orange },    -- For all numbers
        TSOperator =                { fg = darcula.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter =               { fg = darcula.paleblue }, -- For parameters of a function.
        TSParameterReference=       { fg = darcula.paleblue },    -- For references to parameters of a function.
        TSProperty =                { fg = darcula.paleblue }, -- Same as `TSField`.
        TSPunctDelimiter =          { fg = darcula.cyan }, -- For delimiters ie: `.`
        TSPunctBracket =            { fg = darcula.cyan }, -- For brackets and parens.
        TSPunctSpecial =            { fg = darcula.cyan }, -- For special punctutation that does not fall in the catagories before.
        TSString =                  { fg = darcula.green },    -- For strings.
        TSStringRegex =             { fg = darcula.blue }, -- For regexes.
        TSStringEscape =            { fg = darcula.disabled }, -- For escape characters within a string.
        TSSymbol =                  { fg = darcula.yellow },    -- For identifiers referring to symbols or atoms.
        TSType =                    { fg = darcula.purple },    -- For types.
        TSTypeBuiltin =             { fg = darcula.purple },    -- For builtin types.
        TSTag =                     { fg = darcula.red },    -- Tags like html tag names.
        TSTagDelimiter =            { fg = darcula.yellow },    -- Tag delimiter like `<` `>` `/`
        TSText =                    { fg = darcula.text },    -- For strings considered text in a markup language.
        TSTextReference =           { fg = darcula.yellow }, -- FIXME
        TSEmphasis =                { fg = darcula.paleblue },    -- For text to be represented with emphasis.
        TSUnderline =               { fg = darcula.fg, bg = darcula.none, style = 'underline' },    -- For text to be represented with an underline.
        TSStrike =                  { },    -- For strikethrough text.
        TSTitle =                   { fg = darcula.paleblue, bg = darcula.none, style = 'bold' },    -- Text that is part of a title.
        TSLiteral =                 { fg = darcula.fg },    -- Literal text.
        TSURI =                     { fg = darcula.link },    -- Any URI like a link or email.
    }

    -- Options:

    -- Italic comments
    if vim.g.darcula_italic_comments == true then
        treesitter.TSComment=                  { fg = darcula.comments , bg = darcula.none, style = 'italic' }    -- For comment blocks.
    else
        treesitter.TSComment=                  { fg = darcula.comments }    -- For comment blocks.
    end

    if vim.g.darcula_italic_keywords == true then
        treesitter.TSConditional =             { fg = darcula.purple, style = 'italic' }    -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = darcula.purple, style = 'italic' } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = darcula.purple, style = 'italic' }    -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = darcula.purple, style = 'italic' } -- For keywords used to define a fuction.
    else
        treesitter.TSConditional =             { fg = darcula.purple }    -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = darcula.purple } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = darcula.purple }    -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = darcula.purple } -- For keywords used to define a fuction.
    end

    if vim.g.darcula_italic_functions == true then
        treesitter.TSFunction =                { fg = darcula.blue, style = 'italic' }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = darcula.blue, style = 'italic' }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = darcula.cyan, style = 'italic' }    -- For builtin functions: `table.insert` in Lua.
    else
        treesitter.TSFunction =                { fg = darcula.blue }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = darcula.blue }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = darcula.cyan }    -- For builtin functions: `table.insert` in Lua.
    end

    if vim.g.darcula_italic_variables == true then
        treesitter.TSVariable =                { fg = darcula.gray, style = 'italic' } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = darcula.gray, style = 'italic' } -- Variable names that are defined by the languages, like `this` or `self`.
    else
        treesitter.TSVariable =                { fg = darcula.gray } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = darcula.gray } -- Variable names that are defined by the languages, like `this` or `self`.
    end

    return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError =            { fg = darcula.error }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError =               { fg = darcula.error }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError =           { fg = darcula.error }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError =        { fg = darcula.error }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = darcula.error }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning =          { fg = darcula.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning =             { fg = darcula.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =         { fg = darcula.yellow}, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =      { fg = darcula.yellow}, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = darcula.yellow }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation =      { fg = darcula.paleblue }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation =         { fg = darcula.paleblue },  -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation =     { fg = darcula.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation =  { fg = darcula.paleblue }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = darcula.paleblue }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint =             { fg = darcula.purple  },  -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint =                { fg = darcula.purple  }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint =            { fg = darcula.purple  }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint =         { fg = darcula.purple  }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = darcula.paleblue }, -- used to underline "Hint" diagnostics.
        LspReferenceText =                      { fg = darcula.accent, bg = darcula.highlight }, -- used for highlighting "text" references
        LspReferenceRead =                      { fg = darcula.accent, bg = darcula.highlight }, -- used for highlighting "read" references
        LspReferenceWrite =                     { fg = darcula.accent, bg = darcula.highlight }, -- used for highlighting "write" references
    }

    return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText =                        { fg = darcula.text },
        LspTroubleCount =                       { fg = darcula.purple, bg = darcula.active },
        LspTroubleNormal =                      { fg = darcula.fg, bg = darcula.sidebar },

        -- Diff
        diffAdded =                             { fg = darcula.green },
        diffRemoved =                           { fg = darcula.red },
        diffChanged =                           { fg = darcula.yellow },
        diffOldFile =                           { fg = darcula.yelow },
        diffNewFile =                           { fg = darcula.orange },
        diffFile =                              { fg = darcula.blue },
        diffLine =                              { fg = darcula.comments },
        diffIndexLine =                         { fg = darcula.purple },

        -- Neogit
        NeogitBranch =                          { fg = darcula.paleblue },
        NeogitRemote =                          { fg = darcula.purple },
        NeogitHunkHeader =                      { fg = darcula.fg, bg = darcula.highlight },
        NeogitHunkHeaderHighlight =             { fg = darcula.blue, bg = darcula.contrast },
        NeogitDiffContextHighlight =            { fg = darcula.text, bg = darcula.contrast },
        NeogitDiffDeleteHighlight =             { fg = darcula.red },
        NeogitDiffAddHighlight =                { fg = darcula.green },

        -- GitGutter
        GitGutterAdd =                          { fg = darcula.green }, -- diff mode: Added line |diff.txt|
        GitGutterChange =                       { fg = darcula.yellow }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete =                       { fg = darcula.red }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd =                           { fg = darcula.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr =                         { fg = darcula.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn =                         { fg = darcula.green }, -- diff mode: Added line |diff.txt|
        GitSignsChange =                        { fg = darcula.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr =                      { fg = darcula.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn =                      { fg = darcula.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete =                        { fg = darcula.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr =                      { fg = darcula.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn =                      { fg = darcula.red }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopePromptBorder =                 { fg = darcula.cyan },
        TelescopeResultsBorder =                { fg = darcula.purple },
        TelescopePreviewBorder =                { fg = darcula.green },
        TelescopeSelectionCaret =               { fg = darcula.purple },
        TelescopeSelection =                    { fg = darcula.purple },
        TelescopeMatching =                     { fg = darcula.cyan },
        TelescopeNormal =                       { fg = darcula.fg, bg = darcula.float },

        -- NvimTree
        NvimTreeSymlink = { fg = darcula.fg },
        NvimTreeFolderName = { fg=darcula.fg },
        NvimTreeRootFolder = { fg=darcula.fg, style = 'bold'},
        NvimTreeFolderIcon = { fg=darcula.fg },
        NvimTreeEmptyFolderName = { fg=darcula.fg },
        NvimTreeOpenedFolderName = { fg=darcula.fg },
        NvimTreeExecFile = { fg=darcula.fg },
        NvimTreeOpenedFile = { fg=darcula.fg },
        NvimTreeSpecialFile = { fg=darcula.fg },
        NvimTreeImageFile = { fg=darcula.fg },
        NvimTreeMarkdownFile = { fg=darcula.fg },
        NvimTreeIndentMarker = { fg=darcula.fg },
        --
        LspDiagnosticsError = { fg=darcula.errorStripe },
        LspDiagnosticsWarning = { fg=darcula.warnStripe },
        LspDiagnosticsInformation = { fg=darcula.infoStripe },
        LspDiagnosticsHint = { fg=darcula.hintStripe },

        -- NvimTreeLicenseIcon = { fg=darcula.macroName, bg=darcula.bg, style='italic')")
        -- NvimTreeYamlIcon = { fg=darcula.macroName, bg=darcula.bg, 'italic')")
        -- NvimTreeTomlIcon = { fg=darcula.macroName, darcula.bg, 'italic')")
        -- NvimTreeGitignoreIcon = { fg=darcula.macroName, darcula.bg, 'italic')")
        -- NvimTreeJsonIcon = { fg=darcula.macroName, darcula.bg, 'italic')")
        --
        -- NvimTreeLuaIcon = { fg=darcula.UIBlue, darcula.bg, 'bold')")
        -- NvimTreePythonIcon = { fg=darcula.UIBlue, darcula.bg},
        -- NvimTreeShellIcon = { fg=darcula.macroName, darcula.bg, 'italic')")
        -- NvimTreeJavascriptIcon = { fg=darcula.macroName, darcula.bg, 'italic')")
        -- NvimTreeCIcon = { fg=darcula.macroName, darcula.bg, 'italic')")
        -- NvimTreeReactIcon = { fg=darcula.macroName, darcula.bg, 'italic')")
        -- NvimTreeHtmlIcon = { fg=darcula.macroName, darcula.bg, 'italic')")
        -- NvimTreeRustIcon = { fg=darcula.macroName, darcula.bg, 'italic')")
        -- NvimTreeVimIcon = { fg=darcula.macroName, darcula.bg, 'italic')")
        -- NvimTreeTypescriptIcon = { fg=darcula.macroName, darcula.bg, 'italic')")
        --
        NvimTreeGitDirty = { fg=darcula.number },
        NvimTreeGitStaged = { fg=darcula.number },
        NvimTreeGitMerge = { fg=darcula.number },
        NvimTreeGitRenamed = { fg=darcula.number },
        NvimTreeGitNew = { fg=darcula.UIRed },
        NvimTreeGitDeleted = { fg=darcula.ANSIDarkGray },
        NvimTreeGitIgnored = { fg=darcula.ANSIDarkGray },
        --
        -- NvimTreeWindowPicker
        -- There are also links to normal bindings to style the tree itself.

        NvimTreeCursorLine = { fg=darcula.fg, bg=darcula.selection, style='bold'},
        Normal = { fg=darcula.fg, darcula.bg},
        EndOfBuffer = { fg=darcula.bg, darcula.bg},
        -- CursorLine = { fg=darcula.ANSIGray, darcula.UIBlue},
        -- VertSplit = { fg=darcula.macroName, darcula.bg, 'italic')")
        -- CursorColumn = { fg=darcula.macroName, darcula.bg, 'italic')")

        -- There are also links for file highlight with git properties
        -- These all link to there Git equivalent

        NvimTreeFileDirty = { fg=darcula.number },
        NvimTreeFileStaged = { fg=darcula.number },
        NvimTreeFileMerge = { fg=darcula.number },
        NvimTreeFileRenamed = { fg=darcula.number },
        NvimTreeFileNew = { fg=darcula.UIRed },
        NvimTreeFileDeleted = { fg=darcula.ANSIDarkGray },
        NvimTreeFileIgnored = { fg=darcula.ANSIDarkGray },


        -- WhichKey
        WhichKey =                              { fg = darcula.accent , style = 'bold'},
        WhichKeyGroup =                         { fg = darcula.text },
        WhichKeyDesc =                          { fg = darcula.blue, style = 'italic' },
        WhichKeySeperator =                     { fg = darcula.fg },
        WhichKeyFloating =                      { bg = darcula.float },
        WhichKeyFloat =                         { bg = darcula.float },

        -- LspSaga
        DiagnosticError =                       { fg = darcula.error },
        DiagnosticWarning =                     { fg = darcula.yellow },
        DiagnosticInformation =                 { fg = darcula.paleblue },
        DiagnosticHint =                        { fg = darcula.purple },
        DiagnosticTruncateLine =                { fg = darcula.fg },
        LspFloatWinNormal =                     { bg = darcula.contrast },
        LspFloatWinBorder =                     { fg = darcula.purple },
        LspSagaBorderTitle =                    { fg = darcula.cyan },
        LspSagaHoverBorder =                    { fg = darcula.paleblue },
        LspSagaRenameBorder =                   { fg = darcula.green },
        LspSagaDefPreviewBorder =               { fg = darcula.green },
        LspSagaCodeActionBorder =               { fg = darcula.blue },
        LspSagaFinderSelection =                { fg = darcula.green },
        LspSagaCodeActionTitle =                { fg = darcula.paleblue },
        LspSagaCodeActionContent =              { fg = darcula.purple },
        LspSagaSignatureHelpBorder =            { fg = darcula.pink },
        ReferencesCount =                       { fg = darcula.purple },
        DefinitionCount =                       { fg = darcula.purple },
        DefinitionIcon =                        { fg = darcula.blue },
        ReferencesIcon =                        { fg = darcula.blue },
        TargetWord =                            { fg = darcula.cyan },

        -- BufferLine
        BufferLineIndicatorSelected =           { fg = darcula.accent },
        BufferLineFill =                        { bg = darcula.bg_alt },

        -- Sneak
        Sneak =                                 { fg = darcula.bg, bg = darcula.accent },
        SneakScope =                            { bg = darcula.selection },

        -- Indent Blankline
        IndentBlanklineChar =                   { fg = darcula.highlight },
        IndentBlanklineContextChar =            { fg = darcula.disabled },

	      -- Nvim dap
         DapBreakpoint =                         { fg = darcula.red },
         DapStopped =                            { fg = darcula.green },

        -- nvim tree
    }

    -- Options:

    -- Disable nvim-tree background
        if vim.g.darcula_disable_background == true then
            plugins.NvimTreeNormal =                        { fg = darcula.fg, bg = darcula.none }
        else
            plugins.NvimTreeNormal =                        { fg = darcula.fg, bg = darcula.sidebar }
        end

    return plugins

end

return theme
