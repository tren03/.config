return {
	"nvim-neo-tree/neo-tree.nvim",
	cond = function()
		return not vim.g.vscode -- Ensure this plugin is only loaded in Neovim
	end,
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		vim.keymap.set("n", "<leader>n", "<Cmd>Neotree toggle<CR>")
	end,
}
