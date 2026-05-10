return {
	{
		"tjdevries/colorbuddy.nvim",
		lazy = false,
		priority = 1000,
		config = function()
 			-- vim.cmd.colorscheme("catppuccin-mocha")
			-- vim.cmd.colorscheme("gruber-darker")
			-- vim.cmd.colorscheme("ghostty-default-style-dark")
			vim.cmd.colorscheme("custom")
		end,
	},

	-- { "catppuccin/nvim", opts = {transparent_background = true, float = {transparent = true}}, name = "catppuccin"},
	{ "blazkowolf/gruber-darker.nvim" },
	{
		"nkxxll/ghostty-default-style-dark.nvim",
		opts = {
			on_highlights = function(hl, _)
				hl.StatusLine.bg = "NONE"
				hl.StatusLineNC.bg = "NONE"
			end,
		},
	},
}


