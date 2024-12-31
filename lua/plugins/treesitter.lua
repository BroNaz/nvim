return {
	{
		'nvim-treesitter/nvim-treesitter',

		config = function()
			require 'nvim-treesitter.configs'.setup {
				-- A list of parser names, or "all" (the listed parsers MUST always be installed)
				ensure_installed = { "c", "bash", "lua", "vim", "go", "python", "markdown", "markdown_inline" },
				auto_install = true,


				highlight = {
					enable = true,
				},
			}
		end
	}
}
