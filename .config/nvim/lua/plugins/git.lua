return {
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			numhl = true,
		},
	},
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
		},
		config = true,
	},
}
