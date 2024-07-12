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
		{ trig = "ve", dscr = "Vector", snippetType = "autosnippet" },
		fmt("vector<{}> {} ({});", { i(1, "int"), i(2, "v"), i(3, "n") }),
		{ condition = line_begin }
	),

	s(
		{ trig = "if", dscr = "If", snippetType = "autosnippet" },
		fmta(
			[[
        if (<>) {
          <> 
        }
      ]],
			{ i(1), i(2) }
		),
		{ conditon = line_begin }
	),

	s(
		{ trig = "elif", dscr = "Else if", snippetType = "autosnippet" },
		fmta(
			[[
        else if (<>) {
          <>
        }
      ]],
			{ i(1), i(2) }
		)
	),

	s(
		{ trig = "else", dscr = "Else", snippetType = "autosnippet" },
		fmta(
			[[
        else {
          <>
        }
      ]],
			{ i(1) }
		)
	),

	s(
		{ trig = "fori", dscr = "For i", snippetType = "autosnippet" },
		fmta(
			[[
        for (int <> = 0; <> << <>; <>++) {
          <>
        }
      ]],
			{ i(1, "i"), rep(1), i(2, "n"), rep(1), i(3) }
		),
		{ condition = line_begin }
	),

	s(
		{ trig = "fore", dscr = "For each", snippetType = "autosnippet" },
		fmta(
			[[
        for (auto <> : <>) {
          <>
        }
      ]],
			{ i(1), i(2), i(3) }
		),
		{ condition = line_begin }
	),

	s(
		{ trig = "while", dscr = "While", snippetType = "autosnippet" },
		fmta(
			[[
        while (<>) {
          <>
        }
      ]],
			{ i(1), i(2) }
		),
		{ condition = line_begin }
	),
}
