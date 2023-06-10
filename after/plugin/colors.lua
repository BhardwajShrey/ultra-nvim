function ColorMyNvim(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)
end

ColorMyNvim()
