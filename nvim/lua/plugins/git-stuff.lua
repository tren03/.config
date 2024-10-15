return {
    {
        "tpope/vim-fugitive",
    },
    {

        "https://github.com/lewis6991/gitsigns.nvim",
        config = function()
            local config = require("gitsigns")
            config.setup({})

            vim.keymap.set("n", "<leader>hp", config.preview_hunk)
            vim.keymap.set("n", "<leader>hb", function()
                config.blame_line({ full = true })
            end)
            vim.keymap.set("n", "<leader>tb", config.toggle_current_line_blame)
        end,
    },
}
