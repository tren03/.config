return {
	"danymat/neogen",
	cond = function()
		return not vim.g.vscode -- Ensure this plugin is only loaded in Neovim
	end,
	config = true,
	-- Uncomment next line if you want to follow only stable versions
	-- version = "*"
}
