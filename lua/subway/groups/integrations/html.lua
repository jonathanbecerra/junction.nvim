local p = require("subway.palette")
return {
	htmlArg = { fg = p.bright_blue, italic = true }, -- attributes
	htmlEndTag = { fg = p.gray06 }, -- end tag />
	htmlTitle = { fg = p.gray07 }, -- title tag text
	htmlTag = { fg = p.gray06 }, -- tag delimiters
	htmlTagN = { fg = p.gray06 },
	htmlTagName = { fg = p.cyan }, -- tag text
}
