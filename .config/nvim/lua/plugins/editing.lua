return {
	{
		"windwp/nvim-ts-autotag",
		opts = {
			opts = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = true,
			},
		},
	},
	{ "ethanholz/nvim-lastplace", opts = {} },
	{ "echasnovski/mini.surround", event = "VeryLazy", version = false, opts = {} },
	{ "altermo/ultimate-autopair.nvim", event = { "InsertEnter", "CmdlineEnter" }, branch = "v0.6", opts = {} },
	{
		"fedepujol/move.nvim",
		keys = {
			-- Normal Mode
			{ "<A-down>", ":MoveLine(1)<CR>", desc = "Move Line Up" },
			{ "<A-up>", ":MoveLine(-1)<CR>", desc = "Move Line Down" },
			-- Visual Mode
			{ "<A-down>", ":MoveBlock(1)<CR>", mode = { "v" }, desc = "Move Block Up" },
			{ "<A-up>", ":MoveBlock(-1)<CR>", mode = { "v" }, desc = "Move Block Down" },
		},
		opts = {
			-- Config here
		},
	},
}
