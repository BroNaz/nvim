return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		config = function()
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = "none" })
			vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "none" })
			
			local icons = require "core.icons"
			vim.diagnostic.config({
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = icons.diagnostics.Error,
						[vim.diagnostic.severity.WARN] = icons.diagnostics.Warning,
						[vim.diagnostic.severity.HINT] = icons.diagnostics.Hint,
						[vim.diagnostic.severity.INFO] = icons.diagnostics.Information,
					},
				}
			})

			require("neo-tree").setup({
				window = {
					width = 30, -- замените 40 на нужное значение
				}
			})
		end,
	}
}
