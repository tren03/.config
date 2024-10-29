-- Download from mason and then put it here
return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially for Go
				go = { "goimports", "gofmt" },
                python = {"black"}
			},
		})
		-- Keymap to run the formatter with `gf`
		vim.api.nvim_set_keymap("n", "gf", ":lua require('conform').format()<CR>", { noremap = true, silent = true })
	end,
}
