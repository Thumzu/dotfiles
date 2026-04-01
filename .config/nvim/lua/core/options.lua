-- Set leader
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "

-- Set tabs
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Set GUI options
-- vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.splitright = true
vim.opt.mousemoveevent = true
vim.opt.pumheight = 12 -- limit completion items (lsp)
vim.opt.laststatus = 3 -- only one statusbar per window
-- vim.opt.statusline = "%=%t%="
vim.o.winborder = "rounded"

-- Centre screen after commands
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")

vim.keymap.set("n", "G", "Gzz")


-- Misc
vim.opt.spelllang = "en_gb"
vim.opt.spell = false
vim.opt.title = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Clear search highlights with Esc in normal mode (DOESN'T WORK IN A CLEAN NVIM)
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Neovide
if vim.g.neovide then
    require("core.neovide")
end
