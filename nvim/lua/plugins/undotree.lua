return {
	"mbbill/undotree",
	cond = function()
		return not vim.g.vscode -- Ensure this plugin is only loaded in Neovim
	end,

	config = function()
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
	end,
}
