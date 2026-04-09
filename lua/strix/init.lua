local M = {}

M.config = {
	transparent_background = false,
	integrations = {
		-- Extend this as we build plugin overrides (e.g., telescope, cmp, nvimtree)
	},
}

function M.setup(user_config)
	M.config = vim.tbl_deep_extend("force", M.config, user_config or {})
end

function M.load()
	-- Reset any previous colorscheme
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.g.colors_name = "strix"
	vim.o.termguicolors = true

	local palette = require("strix.palette").colors
	local theme = require("strix.theme")

	-- Generates the highlight map safely
	local highlights = theme.setup(palette, M.config)

	-- Apply highlights
	for group, hl in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, hl)
	end
end

return M
