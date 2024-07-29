
function ColorMyPencils(color)
    color = color or "darkrose"
    --if color == "darkrose" then
    print(color)
    require("darkrose").setup({
        colors = {
            orange = "#F87757",
            magenta = "#FF8DDC",
            red = "#A40A0A",
        },
        overrides = function(c)
            return {
                Class = { fg = c.magenta },
                ["@variable"] = { fg = c.fg_dark },
            }
        end
    })
    require("tokyonight").setup( { 
        style = "night",
        on_colors = function(colors) 
            colors.comment = "#1b7daa";
        end,
        })
    --end

    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", {bg="none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})
end

ColorMyPencils("tokyonight")
