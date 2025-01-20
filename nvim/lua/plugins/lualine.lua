return {
	"nvim-lualine/lualine.nvim",
	cond = function()
		return not vim.g.vscode -- Ensure this plugin is only loaded in Neovim
	end,

	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = { { "filename", path = 1 } }, -- Show full file path (path = 1)
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
