
function ColorMyCode(color)
	color = color or 'dracula' or 'gruvbox'
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})


    require('lualine').setup {
        options = {
            icons_enabled = true,
            theme = color,
        },
        sections = {
            lualine_a = {
                {
                    'filename',
                    path = 1,
                }
            }
        }

    }
end

ColorMyCode()
