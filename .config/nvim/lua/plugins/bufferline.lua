return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        opts = {
            options = {
                -- Using a space or empty string prevents the vertical line character from rendering
                separator_style = { "", "" },
                indicator = {
                    style = 'none', -- Removes the vertical bar on the left of the active tab
                },
                show_buffer_close_icons = false,
            },
            highlights = {
                -- The main bar background
                fill = { bg = "#202020" },

                -- Inactive buffers
                background = {
                    fg = "#606060", -- Dimmed text for inactive
                    bg = "#202020"
                },

                -- Active buffer
                buffer_selected = {
                    fg = "#ffffff",
                    bg = "#202020",
                    bold = true,
                    italic = false,
                },

                -- This is the critical part to fix the "black blocks"
                -- We make them identical to the fill background
                separator = {
                    fg = "#202020",
                    bg = "#202020"
                },
                separator_visible = {
                    fg = "#202020",
                    bg = "#202020"
                },
                separator_selected = {
                    fg = "#202020",
                    bg = "#202020"
                } ,

                -- Fix need to save circle having a different colour
                modified = {
                    fg = "#606060",
                    bg = "#202020"
                },
                modified_visible = {
                    fg = "#606060",
                    bg = "#202020"
                },
                modified_selected = {
                    fg = "#ffffff",
                    bg = "#202020"
                },

                -- Remove the "close" button background highlights if they are creating boxes
                close_button = { fg = "#606060", bg = "#202020" },
                close_button_visible = { fg = "#606060", bg = "#202020" },
                close_button_selected = { fg = "#ffffff", bg = "#202020" },

            },
        },
    }
}
