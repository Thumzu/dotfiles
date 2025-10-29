return {
	{
		"tjdevries/colorbuddy.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-macchiato")
			-- vim.cmd.colorscheme("gruber-darker")
		end,
	},

	{ "catppuccin/nvim", opts = {transparent_background = true, float = {transparent = true}}, name = "catppuccin"},
	{ "blazkowolf/gruber-darker.nvim" }
}
