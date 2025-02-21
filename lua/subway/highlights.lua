local config = require("subway.config")
local editor_highlights = require("subway.groups.editor")
local syntax_highlights = require("subway.groups.syntax")
local terminal = require("subway.terminal")

local M = {}

local integrations_highlights = {
	blink = require("subway.groups.integrations.blink"),
	cmp = require("subway.groups.integrations.cmp"),
	gitsigns = require("subway.groups.integrations.gitsigns"),
	lazy = require("subway.groups.integrations.lazy"),
	lsp = require("subway.groups.integrations.lsp"),
	markdown = require("subway.groups.integrations.markdown"),
	mason = require("subway.groups.integrations.mason"),
	noice = require("subway.groups.integrations.noice"),
	notify = require("subway.groups.integrations.notify"),
	rainbow_delimiters = require("subway.groups.integrations.rainbow_delimiters"),
	saga = require("subway.groups.integrations.saga"),
	telescope = require("subway.groups.integrations.telescope"),
	treesitter = require("subway.groups.integrations.treesitter"),
}
local integrations = {}

for integration, enabled in pairs(config.integrations) do
	if enabled then
		local highlights = integrations_highlights[integration]
		table.insert(integrations, { enabled = true, highlights = highlights })
	end
end

local function load_highlights(highlights)
	for group_name, group_settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group_name, group_settings)
	end
end

function M.setup()
	load_highlights(editor_highlights)
	load_highlights(syntax_highlights)
	for _, plugin in ipairs(integrations) do
		if plugin.enabled then
			load_highlights(plugin.highlights)
		end
	end

	load_highlights(config.highlight_overrides)

	if config.terminal_colors then
		terminal.setup()
	end
end

return M
