---@diagnostic disable: param-type-mismatch, undefined-global
pcall(vim.cmd, "packadd lush.nvim")
local lush = require("lush")

local colors = require("lushwal").colors
local scheme = lush(function()
	if not colors then
		return {}
	end
	-- selene: allow(undefined_variable)
	return {
		Normal({ fg = colors.foreground, bg = colors.background }),
		NormalFloat({ fg = colors.foreground, bg = colors.background }),
		NormalNC({ fg = colors.foreground, bg = colors.transparent }),

		Bold({ Normal, gui = "bold" }),
		Italic({ Normal, gui = "italic" }),

		Debug({ fg = colors.color1 }),
		Directory({ fg = colors.color4 }),
		Error({ fg = colors.color1, bg = colors.color15 }),
		ErrorMsg({ fg = colors.color1, bg = colors.background }),
		Exception({ fg = colors.color1 }),
		FoldColumn({ fg = colors.color4, bg = colors.background }),
		Folded({ fg = colorscolor7, bg = colors.br_black, gui = "italic" }),
		IncSearch({ fg = colors.br_black, bg = colors.orange }),

		VertSplit({ fg = colorscolor7, bg = colors.background }),
		WinSeparator({ VertSplit }),

		Macro({ fg = colors.color1 }),
		MatchParen({ fg = colors.foreground, bg = colors.br_grey }),
		ModeMsg({ fg = colors.color2 }),
		MoreMsg({ fg = colors.color2 }),
		Question({ fg = colors.color4 }),
		Search({ fg = colors.br_grey, bg = colors.color3 }),
		SpecialKey({ fg = colors.br_grey }),
		TooLong({ fg = colors.color1 }),
		Underlined({ fg = colors.color1 }),
		Visual({ bg = colors.grey, fg = colors.background }),
		VisualNOS({ fg = colors.color1 }),
		WarningMsg({ fg = colors.color1 }),
		WildMenu({ fg = colors.foreground, bg = colors.color4 }),
		Title({ fg = colors.color4, gui = "bold" }),
		Conceal({ fg = colors.br_black, bg = colors.background }),
		color7space({ Conceal }),
		Cursor({ fg = colors.background, bg = colors.foreground }),
		NonText({ fg = colors.br_grey }),
		EndOfBuffer({ fg = colors.foreground, bg = colors.background }),
		SignColumn({ fg = colors.grey, bg = colors.background }),
		LineNr({ fg = colors.br_grey, bg = colors.background }),
		ColorColumn({ fg = colors.grey }),
		CursorColumn({ fg = colors.grey }),
		CursorLine({ bg = colors.br_black, gui = "None" }),
		CursorLineNr({ fg = colorscolor7, bg = colors.background, gui = "None" }),
		PMenu({ fg = colorscolor7, bg = colors.br_black }),
		PMenuSel({ fg = colors.foreground, bg = colors.color4 }),
		PmenuSbar({ fg = colors.grey }),
		PmenuThumb({ fg = colors.foreground }),
		TabLine({ fg = colors.br_grey, bg = colors.br_black }),
		TabLineFill({ fg = colors.br_grey, bg = colors.br_black }),
		TabLineSel({ fg = colors.color2, bg = colors.br_black }),
		helpExample({ fg = colors.color3 }),
		helpCommand({ fg = colors.color3 }),

		Boolean({ fg = colors.orange }),
		Character({ fg = colors.color1 }),
		Comment({ fg = colorscolor7, gui = "italic" }),
		Conditional({ fg = colors.purple }),
		Constant({ fg = colors.orange }),
		Define({ fg = colors.purple }),
		Delimiter({ fg = colors.brown }),
		Float({ fg = colors.orange }),
		Function({ fg = colors.color4 }),

		Identifier({ fg = colors.color6 }),
		Include({ fg = colors.color4 }),
		Keyword({ fg = colors.purple }),

		Label({ fg = colors.color3 }),
		Number({ fg = colors.orange }),
		Operator({ fg = colors.foreground }),
		PreProc({ fg = colors.color3 }),
		Repeat({ fg = colors.color3 }),
		Special({ fg = colors.color6 }),
		SpecialChar({ fg = colors.brown }),
		Statement({ fg = colors.color1 }),
		StorageClass({ fg = colors.color3 }),
		String({ fg = colors.color2 }),
		Structure({ fg = colors.purple }),
		Tag({ fg = colors.color3 }),
		Todo({ fg = colors.color3, bg = colors.br_black }),
		Type({ fg = colors.color3 }),
		Typedef({ fg = colors.color3 }),

		SpellBad({ gui = "underline", fg = colors.color1, sp = colors.color1 }),
		SpellLocal({ gui = "underline", fg = colors.color6, sp = colors.color6 }),
		SpellCap({ gui = "underline", fg = colors.color3, sp = colors.color3 }),
		SpellRare({ gui = "underline", fg = colors.purple, sp = colors.purple }),

		StatusLine({ fg = colors.transparent, bg = colors.transparent }),
		StatusLineNC({ fg = colors.transparent, bg = colors.transparent }),

		StatusLineTerm({ fg = colors.br_green, bg = colors.color2 }),
		StatusLineTermNC({ fg = colors.br_yellow, bg = colors.br_black }),
		WinBar({ fg = colorscolor7, bg = colors.background, gui = "None" }),
		WinBarNC({ fg = colors.grey, bg = colors.background, gui = "None" }),
		User({ Normal }),

		DiffAdd({ fg = colors.color2, bg = colors.br_black, gui = "bold" }),
		DiffChange({ fg = colors.br_grey, bg = colors.br_black }),
		DiffDelete({ fg = colors.color1, bg = colors.br_black, gui = "bold" }),
		DiffText({ fg = colors.color4, bg = colors.br_black }),
		DiffFile({ fg = colors.color1, bg = colors.background }),
		DiffNewFile({ fg = colors.color2, bg = colors.background }),
		DiffLine({ fg = colors.color4, bg = colors.background }),
		DiffAdded({ DiffAdd }),
		DiffRemoved({ DiffDelete }),
		diffRemoved({ DiffDelete }),

		gitCommitOverflow({ fg = colors.color1 }),
		gitCommitSummary({ fg = colors.color2 }),
	}
	-- selene: deny(undefined_variable)
end)

return scheme
