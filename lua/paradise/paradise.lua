local paradise = {}

paradise.colors = {
	base00 = "#151515",
	base01 = "#1F1F1F",
	base02 = "#2E2E2E",
	base03 = "#424242",
	base04 = "#BBB6B6",
	base05 = "#E8E3E3",
	base06 = "#E8E3E3",
	base07 = "#E8E3E3",
	base08 = "#B66467",
	base09 = "#D9BC8C",
	base0A = "#D9BC8C",
	base0B = "#8C977D",
	base0C = "#8AA6A2",
	base0D = "#8DA3B9",
	base0E = "#A988B0",
	base0F = "#BBB6B6",
}

paradise.setup = function()
	vim.cmd("highlight clear")
	vim.o.background = "dark"
	vim.o.termguicolors = true

	local groups = {
		Normal = { fg = paradise.colors.base05, bg = paradise.colors.base00 },
		Comment = { fg = paradise.colors.base04, italic = true },
		Error = { fg = paradise.colors.base08 },
		Function = { fg = paradise.colors.base0D },
		Keyword = { fg = paradise.colors.base0E },
		String = { fg = paradise.colors.base0B },
	}

	for group, opts in pairs(groups) do
		local cmd = "highlight " .. group
		if opts.fg then
			cmd = cmd .. " guifg=" .. opts.base05
		end
		if opts.bg then
			cmd = cmd .. " guibg=" .. opts.base00
		end
		if opts.bold then
			cmd = cmd .. " gui=bold"
		end
		if opts.italic then
			cmd = cmd .. " gui=italic"
		end
		vim.cmd(cmd)
	end
end

return paradise
