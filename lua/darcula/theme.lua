local darcula = require("darcula.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = darcula.TSType },      -- int, long, char, etc.
		StorageClass =		{ fg = darcula.cyan },        -- static, register, volatile, etc.
		Structure =				{ fg = darcula.puple },       -- struct, union, enum, etc.
		Constant =				{ fg = darcula.TSConstant },  -- any constant
		String =					{ fg = darcula.TSString, bg = darcula.none, style= 'italic' }, -- Any string
		Character =				{ fg = darcula.TSCharacter }, -- any character constant: 'c = { fg='\n'
		Number =					{ fg = darcula.TSNumber },    -- a number constant: 5
		Boolean =					{ fg = darcula.TSBoolean },   -- a boolean constant: TRUE, false
		Float =						{ fg = darcula.TSFloat },     -- a floating point constant: 2.3e10
		Statement =				{ fg = darcula.TSKeyword },     -- any statement
		Label =						{ fg = darcula.TSLabel },      -- case, default, etc.
		Operator =				{ fg = darcula.TSOperator },      -- sizeof", "+", "*", etc.
		Exception =				{ fg = darcula.TSException }, -- try, catch, throw
		PreProc =					{ fg = darcula.metaData },    -- generic Preprocessor
		Include =					{ fg = darcula.TSInclude},   -- preprocessor #include
		-- Define =					{ fg = darcula.pink },      -- preprocessor #define
		Macro =						{ fg = darcula.TSFuncMacro },        -- same as Define
		Typedef =					{ fg = darcula.typeDef },     -- A typedef
		PreCondit =				{ fg = darcula.ANSIYellow },  -- preprocessor #if, #else, #endif, etc.
		Special =					{ fg = darcula.metaData },    -- any special symbol
		SpecialChar =			{ fg = darcula.metaData },    -- special character in a constant
		Tag =						  { fg = darcula.TSTag },     -- you can use CTRL-] on this
		Delimiter =				{ fg = darcula.TSPunctDelimiter },   -- character that needs attention like , or .
		SpecialComment =	{ fg = darcula.specialComment, bg = darcula.none, style = 'italic' }, -- special things inside a comment
		Debug =						{ fg = darcula.debug, bg = darcula.none, style = 'italic' },            -- debugging statements
		Underlined =			{ fg = darcula.fg, bg = darcula.none, style = 'underline' },            -- text that stands out, HTML links
		Ignore =					{ fg = darcula.disabled }, -- left blank, hidden
		Error =						{ fg = darcula.error, bg = darcula.none, style = 'bold,underline' },    -- any erroneous construct
		Todo =						{ fg = darcula.yellow, bg = darcula.none, style = 'bold,italic' },      -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    htmlLink = { fg = darcula.TSURI, style = "underline" },
    htmlH1 = { fg = darcula.ANSIBrightCyan, style = "bold" },
    htmlH2 = { fg = darcula.ANSIBrightRed, style = "bold" },
    htmlH3 = { fg = darcula.ANSIBrightGreen, style = "bold" },
    htmlH4 = { fg = darcula.ANSIBrightYellow, style = "bold" },
    htmlH5 = { fg = darcula.ANSIBrightMagenta, style = "bold" },
    markdownH1 = { fg = darcula.ANSIBrightCyan, style = "bold" },
    markdownH2 = { fg = darcula.ANSIBrightRed, style = "bold" },
    markdownH3 = { fg = darcula.ANSIBrightGreen, style = "bold" },
    markdownH1Delimiter = { fg = darcula.ANSIBrightCyan },
    markdownH2Delimiter = { fg = darcula.ANSIBrightRed },
    markdownH3Delimiter = { fg = darcula.ANSIBrightGreen },
	}

	-- Options:

	-- Italic comments
	if vim.g.darcula_italic_comments == true then
		syntax.Comment =		{fg = darcula.TSComment, bg = darcula.none, style = 'italic'} -- italic comments
	else
		syntax.Comment =		{fg = darcula.TSComment} -- normal comments
	end

	-- Italic Keywords
	if vim.g.darcula_italic_keywords == true then
		syntax.Conditional =	{fg = darcula.TSConditional, bg = darcula.none, style = 'italic'} -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = darcula.TSKeyword, bg = darcula.none, style = 'italic'}     -- italic for, do, while, etc.
		syntax.Repeat =				{fg = darcula.TSRepeat, bg = darcula.none, style = 'italic'}      -- italic any other keyword
	else
		syntax.Conditional =	{fg = darcula.TSConditional} -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = darcula.TSKeyword}     -- normal for, do, while, etc.
		syntax.Repeat =				{fg = darcula.TSRepeat}      -- normal any other keyword
	end

	-- Italic Function names
	if vim.g.darcula_italic_functions == true then
		syntax.Function =		{fg = darcula.TSFunction, style = 'italic'} -- italic funtion names
	else
		syntax.Function =		{fg = darcula.TSFunction} -- normal function names
	end

	if vim.g.darcula_italic_variables == true then
		syntax.Identifier =				{fg = darcula.TSVariable, bg = darcula.none, style = 'italic'} -- any variable name
    else
		syntax.Identifier =				{fg = darcula.TSVariable} -- any variable name
    end

    return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

	local editor = {
    -- Char =              { fg = darcula.string },
		-- ColorColumn =			  { fg = darcula.none, bg = darcula.wrapGuide }, --  used for the columns set with 'colorcolumn'
		Conceal =				    { fg = darcula.muted, bg = darcula.bg }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				    { fg = darcula.cursor }, -- the character under the cursor
		lCursor =				    { fg = darcula.cursor }, -- the character under the cursor
		CursorColumn =		  { fg = darcula.none, bg = darcula.wrapGuide },
		CursorIM =				  { fg = darcula.cursor }, -- like Cursor, but used when in IME mode
		CursorLine =		    { fg = darcula.none, bg = darcula.cursorLine , style = "NONE"},
		CursorLineNr =		  { fg = darcula.cursorLineNr, bg = darcula.cursorLine },
		Comment =		        { fg = darcula.comment },
		DiffAdd =				    { fg = darcula.none,  bg = darcula.diffAdd }, -- diff mode: Added line
		DiffChange =			  { fg = darcula.none, bg = darcula.diffChange }, --  diff mode: Changed line
		DiffDelete =			  { fg = darcula.none, bg = darcula.diffDelete }, -- diff mode: Deleted line
		DiffText =				  { fg = darcula.none, bg = darcula.diffText }, -- diff mode: Changed text within a changed line
		Directory =				  { fg = darcula.fg }, -- directory names (and other special names in listings)
		EndOfBuffer =			  { fg = darcula.muted },
		ErrorMsg =				  { fg = darcula.errorMsg },
    Error =             { fg = darcula.error },
		Folded =				    { fg = darcula.foldedFg, bg = darcula.foldedBg, style = 'italic' },
		FoldColumn =			  { fg = darcula.foldedFg, bg = darcula.foldedBg },
		IncSearch =				  { fg = darcula.none, bg = darcula.incSearch },
		LineNr =				    { fg = darcula.lineNumber, bg = darcula.gutter },
		LineNrAbove =				{ fg = darcula.lineNumber, bg = darcula.gutter },
		LineNrBelow =				{ fg = darcula.lineNumber, bg = darcula.gutter },
		MatchParen =			  { fg = darcula.matchBraceFg, bg = darcula.matchBraceBg, style = 'bold' },
		ModeMsg =				    { fg = darcula.stdOutput },
		MoreMsg =				    { fg = darcula.fg },
		NonText =				    { fg = darcula.muted },
		NormalFloat =			  { fg = darcula.menuFg, bg = darcula.menu }, -- normal text and background color
		-- NormalMode =			  { fg = darcula.accent, bg = darcula.none, style = 'reverse' },
		NormalNC =			    { fg = darcula.fg },
    MsgArea =           { fg = darcula.fg },
    MsgSeparator =      { fg = darcula.statusLineFg, bg = darcula.statusLine },
    NvimInternalError = { fg = darcula.error, bg = darcula.error },
		Pmenu =					    { fg = darcula.menuFg, bg = darcula.menu },
		PmenuSel =				  { fg = darcula.menuFg, bg = darcula.menuSel },
		PmenuSbar =				  { fg = darcula.menu, bg = darcula.menu },
		PmenuThumb =			  { fg = darcula.menuSBar, bg = darcula.menuSBar },
		Question =				  { fg = darcula.fg },
		QuickFixLine =		  { fg = darcula.fg },
		-- qfLineNr =				  { fg = darcula.lineNumber, bg = darcula.gutter },
    RedrawDebugClear =  { fg = darcula.fg, bg = darcula.duplicateFromServer },
    RedrawDebugComposed = { fg = darcula.fg, bg = darcula.search },
    RedrawDebugRecompose = { fg = darcula.fg, bg = darcula.codeError },
		Search =				    { fg = darcula.none, bg = darcula.search },
    Special =           { fg = darcula.metaData },
		SpecialKey =			  { fg = darcula.muted },
		SpellBad =				  { fg = darcula.typo, bg = darcula.none, style = 'undercurl' },
		SpellCap =				  { fg = darcula.typo, bg = darcula.none, style = 'undercurl' },
		SpellLocal =			  { fg = darcula.typo, bg = darcula.none, style = 'undercurl' },
		SpellRare =				  { fg = darcula.typo, bg = darcula.none, style = 'undercurl' },
    Substitube =        { fg = darcula.none, bg = darcula.search },
		StatusLine =			  { fg = darcula.statusLineFg, bg = darcula.statusLine },
		StatusLineNC =  		{ fg = darcula.statusLineNC, bg = darcula.statusLine },
    StatusLineTerm =		{ fg = darcula.statusLineFg, bg = darcula.statusLine },
		StatusLineTermNC =	{ fg = darcula.statusLineNC, bg = darcula.statusLine },
		Tabline =				    { fg = darcula.statusLineFg , bg = darcula.statusLine},
		TabLineFill =			  { fg = darcula.statusLine, bg = darcula.statusLine },
		TablineSel =			  { fg = darcula.fg, bg = darcula.tabLineSel },
		Terminal =				  { fg = darcula.stdOutput, bg = darcula.bg },
		Title =					    { fg = darcula.metaData },
		Type =					    { fg = darcula.keyword },
		Typedef =					  { fg = darcula.typeDef },
		Todo =					    { fg = darcula.todo, bg = darcula.none, style = 'italic' },
		Visual =				    { fg = darcula.none, bg = darcula.selection },
		VisualNOS =				  { fg = darcula.none, bg = darcula.selection },
		WildMenu =				  { fg = darcula.menuFg, bg = darcula.menuSel },
		-- VertSplit =				  { fg = darcula.muted },
		WarningMsg =			  { fg = darcula.warning },
    Whitespace =        { fg = darcula.muted },
		-- ToolbarLine =			  { fg = darcula.fg, bg = darcula.bg_alt },
		-- ToolbarButton =			{ fg = darcula.fg, bg = darcula.none, style = 'bold' },
		-- InsertMode =			  { fg = darcula.green, bg = darcula.none, style = 'reverse' },
		-- ReplacelMode =			{ fg = darcula.red, bg = darcula.none, style = 'reverse' },
		-- VisualMode =			  { fg = darcula.purple, bg = darcula.none, style = 'reverse' },
		-- CommandMode =			  { fg = darcula.fg, bg = darcula.none, style = 'reverse' },
		-- Warnings =				  { fg = darcula.yellow },
    -- healthError =       { fg = darcula.error },
    healthSuccess =     { fg = darcula.none, bg = darcula.incSearch },
    -- healthWarning =     { fg = darcula.yellow },
    -- Dashboard
    -- DashboardShortCut = { fg = darcula.blue },
    -- DashboardHeader =   { fg = darcula.red },
    -- DashboardCenter =   { fg = darcula.cyan },
    -- DashboardFooter =   { fg = darcula.green, style = "italic" },
    --
    docComment = { darcula.docComment, bg = darcula.none, style = 'italic'},
    NormalFg = { fg = darcula.fg },
    GitAddStripe = { fg = darcula.addStripe, bg = darcula.addStripe },
    GitChangeStripe = { fg = darcula.changeStripe, bg = darcula.changeStripe },
    GitDeleteStripe = { fg = darcula.deleteStripe, bg = darcula.gutter },
    CodeError = { fg = darcula.none, bg = darcula.codeError },
    CodeWarning = { fg = darcula.none, bg = darcula.codeWarning },
    CodeInfo = { fg = darcula.none, bg = darcula.infoStripe },
    CodeHint = { fg = darcula.hintFg, bg = darcula.hintBg },
    ErrorSign = { fg = darcula.errorStripe, bg = darcula.gutter },
    WarningSign = { fg = darcula.warnStripe, bg = darcula.gutter },
    InfoSign = { fg = darcula.infoStripe, bg = darcula.gutter },
    HintSign = { fg = darcula.hintStripe, bg = darcula.gutter },
    IdentifierUnderCaret = { fg = darcula.none, bg = darcula.identifierUnderCaret },
    IdentifierUnderCaretWrite = { fg = darcula.none, bg = darcula.identifierUnderCaretWrite },
    InstanceField = { fg = darcula.constant },
    UIDialog = { fg = darcula.fg, bg = darcula.statusLine },
    UIBorder = { fg = darcula.UIBorder, bg = darcula.statusLine },
    UISelection = { fg = darcula.none, bg = darcula.UISelection },


	}

    -- Options:

    --Set transparent background
    if vim.g.darcula_disable_background == true then
      editor.Normal =				{ fg = darcula.fg, bg = darcula.none } -- normal text and background color
      editor.SignColumn =			{ fg = darcula.none, bg = darcula.none }
    else
      editor.Normal =				{ fg = darcula.fg, bg = darcula.bg } -- normal text and background color
      editor.SignColumn =			{ fg = darcula.none, bg = darcula.gutter }
    end

    -- Remove window split borders
    if vim.g.darcula_borders == true then
      editor.VertSplit =				{ fg = darcula.muted }
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
        TSAnnotation =              { fg = darcula.TSAnnotation },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        TSAttribute =               { fg = darcula.TSAttribute },    -- (unstable) TODO: docs
        TSBoolean =                 { fg = darcula.TSBoolean },    -- For booleans.
        TSCharacter =               { fg = darcula.TSCharacter },    -- For characters.
        TSConstructor =             { fg = darcula.TSConstructor }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstant =                { fg = darcula.TSConstant},    -- For constants
        TSConstBuiltin =            { fg = darcula.TSConstBuiltin },    -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro =              { fg = darcula.TSConstMacro },    -- For constants that are defined by macros: `NULL` in C.
        TSError =                   { fg = darcula.TSError },    -- For syntax/parser errors.
        TSException =               { fg = darcula.TSException },    -- For exception related keywords.
        TSField =                   { fg = darcula.TSField }, -- For fields.
        TSFloat =                   { fg = darcula.TSNumber },    -- For floats.
        TSFuncMacro =               { fg = darcula.TSFuncMacro },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude =                 { fg = darcula.TSInclude },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSLabel =                   { fg = darcula.TSLabel }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace =               { fg = darcula.ANSIMagenta },    -- For identifiers referring to modules and namespaces.
        TSNone =                    { fg = darcula.fg },    -- TODO: docs
        TSNumber =                  { fg = darcula.TSNumber },    -- For all numbers
        TSOperator =                { fg = darcula.fg }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter =               { fg = darcula.TSParameter },             -- For parameters of a function.
        TSParameterReference=       { fg = darcula.TSParameterReference },    -- For references to parameters of a function.
        TSProperty =                { fg = darcula.TSProperty },       -- Same as `TSField`.
        TSPunctDelimiter =          { fg = darcula.normal },         -- For delimiters ie: `.`
        TSPunctBracket =            { fg = darcula.normal },         -- For brackets and parens.
        TSPunctSpecial =            { fg = darcula.specialComment }, -- For special punctutation that does not fall in the catagories before.
        TSString =                  { fg = darcula.string },    -- For strings.
        TSStringRegex =             { fg = darcula.number }, -- For regexes.
        TSStringEscape =            { fg = darcula.keyword }, -- For escape characters within a string.
        TSSymbol =                  { fg = darcula.menuSel },    -- For identifiers referring to symbols or atoms.
        TSType =                    { fg = darcula.fg },    -- For types.
        TSTypeBuiltin =             { fg = darcula.keyword },    -- For builtin types.
        TSTag =                     { fg = darcula.ptag },    -- Tags like html tag names.
        TSTagDelimiter =            { fg = darcula.ptag },    -- Tag delimiter like `<` `>` `/`
        TSText =                    { fg = darcula.fg },    -- For strings considered text in a markup language.
        TSTextReference =           { fg = darcula.ANSIYellow }, -- FIXME
        TSEmphasis =                { fg = darcula.fg, bg = darcula.none, style = 'italic' },    -- For text to be represented with emphasis.
        TSUnderline =               { fg = darcula.fg, bg = darcula.none, style = 'underline' },    -- For text to be represented with an underline.
        TSStrike =                  { fg = darcula.fg, bg = darcula.none, style = 'strikethrough'},    -- For strikethrough text.
        TSTitle =                   { fg = darcula.paleblue, bg = darcula.none, style = 'bold,underline' },    -- Text that is part of a title.
        TSLiteral =                 { fg = darcula.fg },    -- Literal text.
        TSURI =                     { fg = darcula.link },    -- Any URI like a link or email.
    }

    -- Options:

    -- Italic comments
    if vim.g.darcula_italic_comments == true then
        treesitter.TSComment=                  { fg = darcula.TSComment , bg = darcula.none, style = 'italic' }    -- For comment blocks.
    else
        treesitter.TSComment=                  { fg = darcula.TSComment }    -- For comment blocks.
    end

    if vim.g.darcula_italic_keywords == true then
        treesitter.TSConditional =             { fg = darcula.TSConditional, style = 'italic' } -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = darcula.TSKeyword, style = 'italic' } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = darcula.keyword, style = 'italic' } -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = darcula.keyword, style = 'italic' } -- For keywords used to define a fuction.
    else
        treesitter.TSConditional =             { fg = darcula.TSConditional }    -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = darcula.TSKeyword } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = darcula.keyword }    -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = darcula.keyword } -- For keywords used to define a fuction.
    end

    if vim.g.darcula_italic_functions == true then
        treesitter.TSFunction =                { fg = darcula.constructor, style = 'italic' }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = darcula.constructor, style = 'italic' }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = darcula.fg, style = 'italic' }    -- For builtin functions: `table.insert` in Lua.
    else
        treesitter.TSFunction =                { fg = darcula.constructor }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = darcula.constructor }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = darcula.fg }    -- For builtin functions: `table.insert` in Lua.
    end

    if vim.g.darcula_italic_variables == true then
        treesitter.TSVariable =                { fg = darcula.TSVariable, style = 'italic' } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = darcula.TSVariableBuiltin, style = 'italic' } -- Variable names that are defined by the languages, like `this` or `self`.
    else
        treesitter.TSVariable =                { fg = darcula.TSVariable } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = darcula.TSVariableBuiltin } -- Variable names that are defined by the languages, like `this` or `self`.
    end

    return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError =            { fg = darcula.none, bg = darcula.codeError }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError =               { fg = darcula.errorStripe, bg = darcula.gutter }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError =           { fg = darcula.error }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError =        { fg = darcula.error }, -- Virtual text "Error" 
        LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = darcula.error }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning =          { fg = darcula.none, bg = darcula.codeWarning}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning =             { fg = darcula.warnStripe, bg = darcula.gutter}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =         { fg = darcula.yellow}, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =      { fg = darcula.yellow}, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = darcula.yellow }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation =      { fg = darcula.none, bg = darcula.infoStripe }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation =         { fg = darcula.paleblue },  -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation =     { fg = darcula.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation =  { fg = darcula.paleblue }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = darcula.paleblue }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint =             { fg = darcula.hintFg, bg = darcula.hintBg },  -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint =                { fg = darcula.purple  }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint =            { fg = darcula.purple  }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint =         { fg = darcula.purple  }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = darcula.paleblue }, -- used to underline "Hint" diagnostics.
        LspReferenceText =                      { fg = darcula.none, bg = darcula.identifierUnderCaret }, -- used for highlighting "text" references
        LspReferenceRead =                      { fg = darcula.none, bg = darcula.identifierUnderCaret }, -- used for highlighting "read" references
        LspReferenceWrite =                     { fg = darcula.none, bg = darcula.identifierUnderCaretWrite }, -- used for highlighting "write" references
    }

    return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText =                        { fg = darcula.fg },
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
        TelescopePromptBorder =                 { fg = darcula.fg },
        TelescopeResultsBorder =                { fg = darcula.fg },
        TelescopePreviewBorder =                { fg = darcula.fg },
        TelescopeSelectionCaret =               { fg = darcula.selection },
        TelescopeSelection =                    { fg = darcula.selection },
        TelescopeMatching =                     { fg = darcula.matchBraceFg },
        TelescopeNormal =                       { fg = darcula.fg, bg = darcula.bg },

        -- NvimTree
        NvimTreeNormal = { fg = darcula.fg, bg = darcula.bg },
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
        WhichKey =                              { fg = darcula.constructer , bg = darcula.statusLine, style = 'bold'},
        WhichKeyGroup =                         { fg = darcula.keyword },
        WhichKeySeperator =                     { fg = darcula.diffAdd },
        WhichKeyDesc =                          { fg = darcula.identifierUnderCaret, style = 'italic' },
        WhichKeyFloat =                         { bg = darcula.menu },
        WhichKeyBorder =                        { bg = darcula.menu },
        WhichKeyKeyValue =                      { bg = darcula.menu },

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

        -- Floatterm-- Impose color to the terminals
        Floatterm = { fg=darcula.fg, bg=darcula.bg }

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
