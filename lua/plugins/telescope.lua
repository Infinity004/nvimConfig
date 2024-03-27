return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    -- or                              , branch = '0.1.x',
    dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
        vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>b", builtin.buffers, {})
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    end,
}
