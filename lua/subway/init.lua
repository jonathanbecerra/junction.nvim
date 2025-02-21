local M = {}

function M.colorscheme()
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "subway"
	require("subway.highlights").setup()
end

M.setup = require("subway.config").setup

return M
