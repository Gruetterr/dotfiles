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

return {
	s({ trig = ";a" }, { t("\\alpha") }),
	s({ trig = ";b" }, { t("\\beta") }),
	s({ trig = ";c" }, { t("\\gamma") }),

	s({ trig = "ff", dscr = "Fraction" }, {
		t("\\frac{"),
		i(1),
		t("}{"),
		i(2),
		t("}"),
	}),

	s(
		{ trig = "eq", dscr = "equation" },
		fmta(
			[[
        \begin{equation}
          <>
        \end{equation}
      ]],

			{ i(1) }
		)
	),
}
