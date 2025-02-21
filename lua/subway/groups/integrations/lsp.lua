local p = require("subway.palette")

return {
	-- LSP Semantic Token Groups
	["@lsp.type.boolean"] = { link = "@boolean" },
	["@lsp.type.builtinType"] = { link = "@type.builtin" },
	["@lsp.type.comment"] = { link = "@comment" },
	["@lsp.type.enum"] = { link = "@type" },
	["@lsp.type.enumMember"] = { link = "@constant" },
	["@lsp.type.escapeSequence"] = { link = "@string.escape" },
	["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
	["@lsp.type.interface"] = { fg = p.blue },
	["@lsp.type.macro"] = { fg = p.magenta },
	["@lsp.type.keyword"] = { link = "@keyword" },
	["@lsp.type.namespace"] = { link = "@namespace" },
	["@lsp.type.number"] = { link = "@number" },
	["@lsp.type.operator"] = { link = "@operator" },
	["@lsp.type.parameter"] = { link = "@parameter" },
	["@lsp.type.property"] = { link = "@property" },
	["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
	["@lsp.type.string.rust"] = { link = "@string" },
	["@lsp.type.typeAlias"] = { link = "@type.definition" },
	["@lsp.type.unresolvedReference"] = { undercurl = true, sp = p.error },
	["@lsp.mod.readonly"] = { link = "@constant" },
	["@lsp.typemod.function.readonly"] = { fg = p.blue },
	["@lsp.typemod.variable.declaration"] = { fg = p.fg },
	["@lsp.typemod.property"] = { fg = p.fg },
	["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
	["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
	["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
	["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
	["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
	["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
	["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
	["@lsp.typemod.operator.injected"] = { link = "@operator" },
	["@lsp.typemod.string.injected"] = { link = "@string" },
	["@lsp.typemod.type.defaultLibrary"] = { fg = p.blue },
	["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
	["@lsp.typemod.variable.injected"] = { link = "@variable" },

	-- Diagnostics
	DiagnosticOk = { fg = p.green, bg = p.blend_green },
	DiagnosticError = { fg = p.red, bg = p.blend_red },
	DiagnosticWarn = { fg = p.yellow, bg = p.blend_yellow },
	DiagnosticInfo = { fg = p.blue, bg = p.blend_blue },
	DiagnosticHint = { fg = p.magenta, bg = p.blend_magenta },
	DiagnosticUnderlineError = { fg = p.red, bg = p.blend_red, underline = true },
	DiagnosticUnderlineWarn = { fg = p.yellow, bg = p.blend_yellow, underline = true },
	DiagnosticUnderlineInfo = { fg = p.blue, bg = p.blend_blue, underline = true },
	DiagnosticUnderlineHint = { fg = p.magenta, bg = p.blend_magenta, underline = true },

	-- Neovim's built-in language server client
	LspReferenceWrite = { fg = p.blue, underline = true },
	LspReferenceText = { fg = p.subtext1, underline = true },
	LspReferenceRead = { fg = p.cyan, underline = true },
	LspSignatureActiveParameter = { fg = p.yellow, bold = true },
}
