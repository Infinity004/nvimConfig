return {
    -- autopairs i.e, if you type (, {, [, etc.. it will pair it automatically
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },

    -- better scrolling cuz i like it this way
    {
        "karb94/neoscroll.nvim",
        config = function()
            require("neoscroll").setup({})
        end,
    },

    -- dashboard for nvim 
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        config = function()
            require("dashboard").setup({
                theme = "hyper",
                config = {
                    week_header = {
                        enable = true,
                    },
                    shortcut = {
                        { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
                        {
                            icon = " ",
                            icon_hl = "@variable",
                            desc = "Files",
                            group = "Label",
                            action = "Telescope find_files",
                            key = "f",
                        },
                    },
                },
            })
        end,
        dependencies = { { "nvim-tree/nvim-web-devicons" } },
    },

    -- directly forked NvChad's terminal called nvterm, really good
    {
        "NvChad/nvterm",
        config = function()
            require("nvterm").setup()
            vim.keymap.set("n", "<leader>h", function()
                require("nvterm.terminal").new("horizontal")
            end, {})
            vim.keymap.set("n", "<leader>v", function()
                require("nvterm.terminal").new("vertical")
            end, {})
        end,
    },
}
