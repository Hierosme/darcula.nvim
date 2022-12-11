local darcula = {

	-- white =         '#1F1F1F',
	-- gray =          '#555555',
	-- black =         '#000000',
	-- red =           '#FF6B68',
	-- green =         '#A8C023',
	-- yellow =        '#FFFF00',
	-- paleblue =      '#7EAEF1',
	-- cyan =          '#299999',
	-- blue =          '#5394EC',
	-- purple =        '#AE8ABE',
	-- orange =        '#f67f81',
	-- pink =          '#FF99FF',
	--
	-- bg_alt =        '#1B1E2B',
	-- text =          '#6A8759',
	-- comments =      '#808080',
	-- contrast =      '#1b1c2b',
	-- active =        '#414863',
	-- border =        '#616161',
	-- line_numbers =  '#596399',
	-- highlight =     '#a1abe0',
	-- disabled =      '#515772',
	-- accent =        '#a3ace1',
	--
	none =          'NONE',
  bg = '#2B2B2B',
  fg = '#A9B7C6',
  cursor = '#BBBBBB',
  identifierUnderCaret = '#344134',
  identifierUnderCaretWrite = '#40332B',
  gutter = '#313335',
  selection = '#214283',
  cursorLine = '#323232',
  cursorLineNr = '#A4A3A3',
  errorMsg = '#CC666E',
  error = '#BC3F3C',
  warning = '#A9B7C6',
  muted = '#606060',
  link = '#287BDE',
  stdOutput = '#BBBBBB',
  lineNumber = '#606366',
  matchBraceFg = '#FFEF28',
  matchBraceBg = '#3B514D',
  todo = '#A8C023',
  search = '#32593D',
  incSearch = '#155221',
  foldedFg = '#8C8C8C',
  foldedBg = '#3A3A3A',
  constant = '#9876AA',
  keyword = '#CC7832',
  comment = '#808080',
  docComment = '#629755',
  string = '#6A8759',
  number = '#6897BB',
  delimiter = '#CC7832',
  specialComment = '#8A653B',
  constructor = '#FFC66D',
  diffAdd = '#294436',
  diffText = '#385570',
  diffDelete = '#484A4A',
  diffChange = '#303C47',
  addStripe = '#384C38',
  stripeWhiteSpace = '#4C4638',
  changeStripe = '#374752',
  deleteStripe = '#656E76',
  typo = '#659C6B',
  metaData = '#BBB529',
  macroName = '#908B25',
  cDataStructure = '#B5B6E3',
  cStructField = '#9373A5',
  debug = '#666D75',
  codeError = '#532B2E',
  codeWarning = '#52503A',
  errorStripe = '#0977AB',
  warnStripe = '#BE9117',
  infoStripe = '#756D56',
  hintStripe = '#6c7176',
  typeDef = '#B9BCD1',
  menu = '#46484A',
  menuFg = '#BBBBBB',
  menuSel = '#113A5C',
  menuSBar = '#616263',
  tag = '#E8BF6A',
  entity = '#6D9CBE',
  htmlAttribute = '#BABABA',
  htmlString = '#A5C261',
  tsObject = '#507874',
  statusLine = '#3C3F41',
  statusLineFg = '#BBBBBB',
  statusLineNC = '#787878',
  tabLineSel = '#4E5254',
  shCommand = '#C57633',
  templateLanguage = '#232525',
  rustMacro = '#4EADE5',
  rustLifetime = '#20999D',
  duplicateFromServer = '#5E5339',
  hintBg = '#3B3B3B',
  hintFg = '#787878',
  wrapGuide = '#2F2F2F',
  UIBorder = '#616161',
  UISelection = '#0D293E',

  -- treesiter
  TSAnnotation = "#629755",       -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
  TSAttribute = "#A9B7C6",        -- (unstable) TODO: docs
  TSBoolean = "#CC7832",          -- For booleans.
  TSCharacter = "#A9B7C6",        -- For characters.
  TSConstructor = "#CC7832",      -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
  TSConstant = "#A9B7C6",         -- For constants
  TSConstBuiltin = "#CC7832",     -- For constant that are built in the language: `nil` in Lua.
  TSConstMacro = "#CC7832",       -- For constants that are defined by macros: `NULL` in C.
  TSError = "#9E2927",            -- For syntax/parser errors.
  TSException = "#CC7832",        -- For exception related keywords.
  TSField = "#9373A5",            -- For fields.
  TSFloat = "#6897BB",            -- For floats.
  TSFuncMacro = "#908B25",        -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
  TSInclude = "#CC7832",          -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
  TSLabel = "#A9B7C6",            -- For labels: `label:` in C and `:label:` in Lua.
  TSNamespace = "",               -- For identifiers referring to modules and namespaces.
  TSNone = "",                    -- TODO: docs
  TSNumber = "#6897BB",           -- For all numbers
  TSOperator = "#A9B7C6",         -- For any operator: `+`, but also `->` and `*` in C.
  TSParameter = "#A9B7C6",        -- For parameters of a function.
  TSParameterReference= "#AA4926",-- For references to parameters of a function.
  TSProperty = "#FFC66D",                -- Same as `TSField`.
  TSPunctDelimiter = "#A9B7C6",   -- For delimiters ie: `.`
  TSPunctBracket = "#CC7832",     -- For brackets and parens.
  TSPunctSpecial = "#CC7832",     -- For special punctutation that does not fall in the catagories before.
  TSString = "#6A8759",                  -- For strings.
  TSStringRegex = "",             -- For regexes.
  TSStringEscape = "",            -- For escape characters within a string.
  TSSymbol = "",                  -- For identifiers referring to symbols or atoms.
  TSType = "",                    -- For types.
  TSTypeBuiltin = "#8888C6",      -- For builtin types.
  TSTag = "#E8BF6A",              -- Tags like html tag names.
  TSTagDelimiter = "#E8BF6A",     -- Tag delimiter like `<` `>` `/`
  TSText = "#A9B7C6",             -- For strings considered text in a markup language.
  TSTextReference = "#6D9CBE",    -- FIXME
  TSEmphasis = "",                -- For text to be represented with emphasis.
  TSUnderline = "",               -- For text to be represented with an underline.
  TSStrike = "",                  -- For strikethrough text.
  TSTitle = "",                   -- Text that is part of a title.
  TSLiteral = "",                 -- Literal text.
  TSURI = "",                     -- Any URI like a link or email.

  TSComment =  "#808080",         -- For comment blocks.
  TSConditional = "#CC7832",      -- For keywords related to conditionnals.
  TSKeyword =  "#CC7832",         -- For keywords that don't fall in previous categories.
  TSRepeat =  "",                 -- For keywords related to loops.
  TSKeywordFunction = "",         -- For keywords used to define a fuction.
  TSFunction =  "",               -- For fuction (calls and definitions).
  TSMethod =  "",                 -- For method calls and definitions.
  TSFuncBuiltin =  "",            -- For builtin functions: `table.insert` in Lua.
  TSVariable =  "#A9B7C6",               -- Any variable name that does not have another highlight.
  TSVariableBuiltin =  "#B200B2",        -- Variable names that are defined by the languages, like `this` or `self`.

  -- terminal
  ANSIBlack = '#000000',
  ANSIRed = '#FF6B68',
  ANSIGreen = '#A8C023',
  ANSIYellow = '#D6BF55',
  ANSIBlue = '#3993D4',
  ANSIMagenta = '#A771BF',
  ANSICyan = '#00A3A3',
  ANSIGray = '#808080',
  ANSIDarkGray = '#555555',
  ANSIBrightRed = '#FF4050',
  ANSIBrightGreen = '#4FC414',
  ANSIBrightYellow = '#E5BF00',
  ANSIBrightBlue = '#1FB0FF',
  ANSIBrightMagenta = '#ED7EED',
  ANSIBrightCyan = '#00E5E5',
  ANSIWhite = '#808080',
  UIBlue = '#3592C4',
  UIGreen = '#499C54',
  UIRed = '#C75450',
  UIBrown = '#93896C',

}

-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.darcula_contrast == false then
    darcula.sidebar = darcula.bg
    darcula.float = darcula.bg
else
    darcula.sidebar = darcula.bg
    darcula.float = darcula.bg
end

return darcula
