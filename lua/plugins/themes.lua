return {
    -- everforest for power users lmao
    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000, -- make sure to load this before all the other start plugins
        -- Optional; default configuration will be used if setup isn't called.
        config = function()
            require("everforest").setup({
                -- Your config here
            })
        end,
    },

    -- catppuccin for normal users
    {
        { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    },
}