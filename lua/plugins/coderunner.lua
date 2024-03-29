return {
    "CRAG666/code_runner.nvim",
    config = function()
        vim.keymap.set("n", "<leader>e", ":RunFile<CR>", { noremap = true, silent = false })
        require("code_runner").setup()
    end,
}
