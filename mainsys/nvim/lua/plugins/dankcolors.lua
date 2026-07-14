return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#181825',
				base01 = '#181825',
				base02 = '#8d9798',
				base03 = '#8d9798',
				base04 = '#e7f4f6',
				base05 = '#f8feff',
				base06 = '#f8feff',
				base07 = '#f8feff',
				base08 = '#ff9fc0',
				base09 = '#ff9fc0',
				base0A = '#a4f1ff',
				base0B = '#a5ffae',
				base0C = '#cff7ff',
				base0D = '#a4f1ff',
				base0E = '#b4f3ff',
				base0F = '#b4f3ff',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#8d9798',
				fg = '#f8feff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#a4f1ff',
				fg = '#181825',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#8d9798' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#cff7ff', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#b4f3ff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#a4f1ff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#a4f1ff',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#cff7ff',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#a5ffae',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#e7f4f6' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#e7f4f6' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#8d9798',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
