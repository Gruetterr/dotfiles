return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",

	config = function()
		local ls = require("luasnip")

		vim.cmd([[
      " Expand or jump in insert mode
      imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 

      " Jump forward through tabstops in visual mode
      smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'
      
      " Jump backward through snippet tabstops with Shift-Tab (for example)
      imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
      smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
    ]])

		require("luasnip.loaders.from_lua").load({ paths = { "~/.config/nvim/snippets/" } })
		ls.config.set_config({
			enable_autosnippets = true,
			store_selection_keys = "<Tab>",
		})
	end,
}
