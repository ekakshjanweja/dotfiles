return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#000000", -- Default background
                base01 = "#463730", -- Lighter background (status bars)
                base02 = "#000000", -- Selection background
                base03 = "#463730", -- Comments, invisibles
                base04 = "#DAD9D7", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#DAD9D7", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#dc714b", -- Variables, errors, red
                base09 = "#efac94", -- Integers, constants, orange
                base0A = "#e1d366", -- Classes, types, yellow
                base0B = "#9fba7d", -- Strings, green
                base0C = "#c0cba9", -- Support, regex, cyan
                base0D = "#a1b5b5", -- Functions, keywords, blue
                base0E = "#fd9168", -- Keywords, storage, magenta
                base0F = "#f3ebb0", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
