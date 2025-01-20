-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.g.maplocalleader = "\\"

vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "[", "[zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]", "]zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>y", ":%y+<CR>", { noremap = true, silent = true })

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch", -- Highlight group to use
			timeout = 300, -- Time in milliseconds the highlight lasts
		})
	end,
})

vim.diagnostic.config({
	virtual_text = true, -- Disable virtual text if you don't want inline errors
	float = {
		border = "rounded",
	},
})

-- Map c[ to :cprev (previous completion)
vim.api.nvim_set_keymap("n", "[c", ":cprev<CR>", { noremap = true, silent = true })
-- Map c] to :cnext (next completion)
vim.api.nvim_set_keymap("n", "]c", ":cnext<CR>", { noremap = true, silent = true })

-- Simple brace generation without adding lines or indent -> this has been done with mini-pairs
-- vim.api.nvim_set_keymap('i', '{', '{}<Esc>i', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '(', '()<Esc>i', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '[', '[]<Esc>i', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '"', '""<Esc>i', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', "'", "''<Esc>i", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '`', '``<Esc>i', { noremap = true, silent = true })

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

-- vscode stuff
-- -- Map 'gf' to VSCode's Format Document command
-- Map <leader>gf to format document and organize imports
if vim.g.vscode then
    -- downlaod ruff for python
	vim.api.nvim_set_keymap(
		"n",
		"<leader>gf", -- Keybinding of your choice
		':call VSCodeCall("editor.action.formatDocument")<CR>:call VSCodeCall("editor.action.organizeImports")<CR>',
		{ noremap = true, silent = true }
	)
	-- Add the Mason bin directory to the PATH
	-- vim.env.PATH = "/Users/vishnu/.local/share/nvim/mason/bin:" .. vim.env.PATH

	vim.api.nvim_set_keymap(
		"n",
		"<leader>n",
		':call VSCodeCall("workbench.action.toggleSidebarVisibility")<CR>',
		{ noremap = true, silent = true }
	)

	-- Map '-' to open the vsnetrw file explorer (like vim-vinegar)
	vim.api.nvim_set_keymap("n", "-", ':call VSCodeCall("vsnetrw.open")<CR>', { noremap = true, silent = true })

	-- Map Ctrl+6 to open the previous editor in Quick Open in VSCode
	vim.api.nvim_set_keymap(
		"n",
		"<C-6>",
		':call VSCodeCall("workbench.action.quickOpenPreviousEditor")<CR>',
		{ noremap = true, silent = true }
	)
	-- Map <leader>ff to Find Files in VSCode
	vim.api.nvim_set_keymap(
		"n",
		"<leader>ff",
		':call VSCodeCall("workbench.action.quickOpen")<CR>',
		{ noremap = true, silent = true }
	)

	vim.api.nvim_set_keymap(
		"n",
		"<leader>fg",
		':call VSCodeCall("workbench.action.findInFiles")<CR>',
		{ noremap = true, silent = true }
	)

	require("lazy").setup("plugins")
end
require("lazy").setup("plugins")
