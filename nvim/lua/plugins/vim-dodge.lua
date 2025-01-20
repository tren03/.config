return {
	"kkoomen/vim-doge",
	cond = function()
		return not vim.g.vscode -- Ensure this plugin is only loaded in Neovim
	end,
}
