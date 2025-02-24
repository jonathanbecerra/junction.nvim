local p = require("subway.palette")
local config = require("subway.config")

local styles = vim.tbl_map(function(value)
	return setmetatable(value, {
		__add = function(a, b)
			return vim.tbl_extend("force", a, b)
		end,
	})
end, config.styles)

return {
	Comment = { fg = p.gray6 } + styles.comments, -- any comment
	SpecialComment = { fg = p.subtext4 }, -- special things inside a comment
	Todo = { fg = p.yellow, bold = true }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

	Constant = { fg = p.purple }, -- any constant
	String = { fg = p.magenta }, -- a string constant: "this is a string"
	Character = { fg = p.magenta }, -- a character constant: 'p', '\n'
	Number = { fg = p.purple }, -- a number constant: 234, 0xff
	Boolean = { fg = p.cyan } + styles.booleans, -- a boolean constant: TRUE, false
	Float = { fg = p.purple }, -- a floating point constant: 2.3e10

	Identifier = { fg = p.blue } + styles.identifiers, -- any variable name
	Function = { fg = p.purple } + styles.functions, -- function name (also: methods for classes)

	Statement = { fg = p.cyan }, -- any statement
	Conditional = { fg = p.cyan }, -- if, then, else, endif, switch, etc.
	Repeat = { fg = p.cyan }, -- for, do, while, etc.
	Label = { fg = p.cyan }, -- case, default, etc.
	Operator = { fg = p.subtext1 }, -- sizeof", "+", "*", etc.
	Keyword = { fg = p.cyan, bold = true } + styles.keywords, -- any other keyword
	Exception = { fg = p.red }, -- try, catch, throw

	PreProc = { fg = p.magenta }, -- generic Preprocessor
	Include = { fg = p.purple }, -- preprocessor #include
	Define = { fg = p.magenta }, -- preprocessor #define
	Macro = { fg = p.magenta }, -- same as Define
	PreCondit = { fg = p.magenta }, -- preprocessor #if, #else, #endif, etc.

	Type = { fg = p.orange }, -- int, long, char, etc.
	StorageClass = { fg = p.orange }, -- static, register, volatile, etc.
	Structure = { fg = p.orange }, -- struct, union, enum, etc.
	Typedef = { fg = p.orange }, -- A typedef

	Special = { fg = p.purple }, -- any special symbol
	SpecialChar = { fg = p.magenta }, -- special character in a constant
	["@tag"] = { fg = p.orange }, -- Element (tag) names
	["@tag.attribute"] = { fg = p.purple, italic = true },
	["@tag.delimiter"] = { fg = p.subtext1 },
	Debug = { fg = p.red }, -- debugging statements

	Underlined = { underline = true }, -- text that stands out, HTML links
	Error = { fg = p.red }, -- any erroneous construct
}
