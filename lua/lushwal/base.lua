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
		Normal({ fg = colors.foreground, bg = colors.transparent }),
		NormalFloat({ fg = colors.foreground, bg = colors.transparent }),
		NormalNC({ fg = colors.background, bg = colors.transparent }),

		Float({ fg = colors.color5 }),
		FloatBorder({ fg = colors.foreground, bg = colors.transparent }),

		Bold({ Normal, gui = "bold" }),
		Italic({ Normal, gui = "italic" }),

		Boolean({ fg = colors.color5 }),
		Character({ fg = colors.color1 }),
		Comment({ fg = colors.color7, gui = "italic" }),
		Conditional({ fg = colors.purple }),
		Constant({ fg = colors.color5 }),
		Define({ fg = colors.purple }),
		Delimiter({ fg = colors.brown }),
		Function({ fg = colors.color4 }),

		Cursor({ fg = colors.background, bg = colors.foreground }),
		CursorColumn({ fg = colors.grey }),
		CursorLine({ bg = colors.transparent }),
		CursorLineNr({ fg = colors.color1, bg = colors.background, gui = "None" }),

		EndOfBuffer({ fg = colors.foreground, bg = colors.background }),
		Directory({ fg = colors.color4 }),
		Debug({ fg = colors.color1 }),
		Error({ fg = colors.color1, bg = colors.color15 }),
		ErrorMsg({ fg = colors.color1, bg = colors.background }),
		Exception({ fg = colors.color1 }),

		FoldColumn({ fg = colors.color4, bg = colors.background }),
		Folded({ fg = colors.color7, bg = colors.br_black, gui = "italic" }),

		PMenu({ fg = colors.foreground, bg = colors.transparent }),
		PMenuSel({ fg = colors.transparent, bg = colors.color2 }),
		PmenuSbar({ fg = colors.transparent }),
		PmenuThumb({ fg = colors.color2 }),

		Special({ fg = colors.color6 }),
		SpecialKey({ fg = colors.color4 }),
		SpecialChar({ fg = colors.foreground }),
		SpecialComment({ fg = colors.color2 }),

		SpellBad({ gui = "underline", fg = colors.color1, sp = colors.color1 }),
		SpellLocal({ gui = "underline", fg = colors.color6, sp = colors.color6 }),
		SpellCap({ gui = "underline", fg = colors.color3, sp = colors.color3 }),
		SpellRare({ gui = "underline", fg = colors.purple, sp = colors.purple }),

		StatusLine({ fg = colors.transparent, bg = colors.transparent }),
		StatusLineNC({ fg = colors.transparent, bg = colors.transparent }),
		StatusLineTerm({ fg = colors.br_green, bg = colors.color2 }),
		StatusLineTermNC({ fg = colors.br_yellow, bg = colors.br_black }),

		TermCursor({ fg = colors.foreground, bg = colors.cursor }),
		TermCursorNC({ fg = colors.foreground, bg = colors.cursor }),

		DiffAdd({ fg = colors.color2, bg = colors.br_black, gui = "bold" }),
		DiffChange({ fg = colors.transparent, bg = colors.color0 }),
		DiffDelete({ fg = colors.color1, bg = colors.br_black, gui = "bold" }),
		DiffText({ fg = colors.color4, bg = colors.br_black }),
		DiffFile({ fg = colors.color1, bg = colors.background }),
		DiffNewFile({ fg = colors.color2, bg = colors.background }),
		DiffLine({ fg = colors.color4, bg = colors.background }),
		DiffAdded({ DiffAdd }),
		DiffRemoved({ DiffDelete }),

		VertSplit({ fg = colors.color7, bg = colors.background }),
		Visual({ fg = colors.foreground, bg = colors.color3 }),
		VisualNOS({ bg = colors.transparent }),

		WinBar({ fg = colors.color7, bg = colors.background, gui = "None" }),
		WinBarNC({ fg = colors.grey, bg = colors.background, gui = "None" }),
		WinSeparator({ VertSplit }), -- WinSeparator = { fg = colors.color8, bg = colors.transparent },

		-- healthError = { fg = colors.color11 },
		-- healthSuccess = { fg = colors.color4 },
		-- healthWarning = { fg = colors.color5 },

		Search({ fg = colors.foreground, bg = colors.color2 }),
		IncSearch({ fg = colors.foreground, bg = colors.color3, gui = "bold" }),

		Macro({ fg = colors.color1 }),
		MatchParen({ fg = colors.foreground, bg = colors.br_grey }),
		ModeMsg({ fg = colors.color2 }),
		MoreMsg({ fg = colors.color2 }),
		Question({ fg = colors.color4 }),
		TooLong({ fg = colors.color1 }),
		Underlined({ fg = colors.color1 }),
		WarningMsg({ fg = colors.color1 }),
		WildMenu({ fg = colors.foreground, bg = colors.color4 }),
		Title({ fg = colors.color4, gui = "bold" }),
		Conceal({ fg = colors.br_black, bg = colors.background }),
		Whitespace({ Conceal }),
		NonText({ fg = colors.br_grey }),
		SignColumn({ fg = colors.grey, bg = colors.background }),
		LineNr({ fg = colors.br_grey, bg = colors.background }),
		ColorColumn({ fg = colors.grey }),
		TabLine({ fg = colors.br_grey, bg = colors.br_black }),
		TabLineFill({ fg = colors.br_grey, bg = colors.br_black }),
		TabLineSel({ fg = colors.color2, bg = colors.br_black }),
		helpExample({ fg = colors.color3 }),
		helpCommand({ fg = colors.color3 }),
		User({ Normal }),
		Identifier({ fg = colors.color6 }),
		Include({ fg = colors.color4 }),
		Keyword({ fg = colors.purple }),
		Label({ fg = colors.color3 }),
		Number({ fg = colors.color5 }),
		Operator({ fg = colors.foreground }),
		PreProc({ fg = colors.color3 }),
		Repeat({ fg = colors.color3 }),
		Statement({ fg = colors.color1 }),
		StorageClass({ fg = colors.color3 }),
		String({ fg = colors.color2 }),
		Structure({ fg = colors.purple }),
		Tag({ fg = colors.color3 }),
		Todo({ fg = colors.color3, bg = colors.br_black }),
		Type({ fg = colors.color3 }),
		Typedef({ fg = colors.color3 }),

		gitCommitOverflow({ fg = colors.color1 }),
		gitCommitSummary({ fg = colors.color2 }),

		MasonHighlightBlockBold({ fg = colors.foreground, bg = colors.color3 }),
		MasonMutedBlock({ fg = colors.foreground, bg = colors.transparent }),
		MasonHighlight({ fg = colors.color6, bg = colors.transparent }),
	}

	-- selene: deny(undefined_variable)
end)

return scheme
