local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep
local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
	s(
		{ trig = "se", dscr = "Section", snippetType = "autosnippet" },
		fmta("\\section{<>}", { i(1) }),
		{ condition = line_begin }
	),

	s(
		{ trig = "ss", dscr = "Subsection", snippetType = "autosnippet" },
		fmta("\\subsection{<>}", { i(1) }),
		{ condition = line_begin }
	),

	s(
		{ trig = "env", dscr = "Environment" },
		fmta(
			[[
        \begin{<>}
          <>
        \end{<>}
      ]],
			{ i(1), i(2), rep(1) }
		)
	),

	s({ trig = "it", dscr = "Italics" }, fmta("\\textit{<>}", { i(1) })),
	s({ trig = "bf", dscr = "Bold" }, fmta("\\textbf{<>}", { i(1) })),
	s({ trig = "un", dscr = "Underline" }, fmta("\\underline{<>}", { i(1) })),

	s({ trig = "dc", dscr = "Document class" }, fmta("\\documentclass{<>}", { i(1) })),
	s({ trig = "up", dscr = "Use package" }, fmta("\\usepackage{<>}", { i(1) })),
}
