
function ColorMyPencils(color)
	color = color or "tokyonight"
	-- Lua
	--vim.o.background = "dark" -- or "light" for light mode (gruvbox)
	vim.cmd.colorscheme(color)
	-- set transparent background
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


end 

ColorMyPencils()
