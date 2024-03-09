return {
	"catppuccin/nvim",
	name = "catppuccin",
	config = function()
		local mocha_palette = require("catppuccin.palettes").get_palette("mocha")
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			term_colors = true,
			transparent_background = true,
			no_italic = true,
			no_bold = false,
			custom_highlights = function()
				return {
					["@comment"] = { fg = mocha_palette.surface1 },
					["@constructor"] = { fg = mocha_palette.blue },
					["@attribute"] = { fg = mocha_palette.blue },
					["@punctuation.special"] = { fg = mocha_palette.overlay2 },
					["@variable"] = { fg = mocha_palette.text },
					["@variable.builtin"] = { fg = mocha_palette.yellow },
					["@variable.parameter"] = { fg = mocha_palette.maroon },
					["@operator"] = { fg = mocha_palette.sky },
					["@function.method"] = { fg = mocha_palette.blue },
					["@keyword"] = { fg = mocha_palette.mauve },
					["@keyword.exception"] = { fg = mocha_palette.mauve },
					["@keyword.storage"] = { fg = mocha_palette.mauve },
					["@keyword.import"] = { fg = mocha_palette.mauve },
					["@keyword.return"] = { fg = mocha_palette.mauve },
					["@keyword.function"] = { fg = mocha_palette.mauve },
					["@keyword.operator"] = { fg = mocha_palette.mauve },
					["@keyword.repeat"] = { fg = mocha_palette.mauve },
					["@keyword.conditional"] = { fg = mocha_palette.mauve },
					["@type"] = { fg = mocha_palette.yellow },
					["@type.builtin"] = { fg = mocha_palette.yellow },
					["@type.definition"] = { fg = mocha_palette.mauve },
					["@type.qualifier"] = { fg = mocha_palette.mauve },
				}
			end,
			styles = {
				comments = {},
				conditionals = {},
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
			},
			color_overrides = {
				mocha = {
					base = mocha_palette.crust,
					mauve = mocha_palette.text, -- so that alphanivm shows text
				},
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}