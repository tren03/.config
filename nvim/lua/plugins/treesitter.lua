return {
	"nvim-treesitter/nvim-treesitter",
	cond = function()
		return not vim.g.vscode -- Ensure this plugin is only loaded in Neovim
	end,
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
