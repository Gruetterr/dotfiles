vim.keymap.set({ "n", "v", "s" }, "j", "gj")
vim.keymap.set({ "n", "v", "s" }, "k", "gk")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")

vim.keymap.set("n", "<leader>mp", ":!pandoc %:p -o %:p:r.pdf<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bp", ":bprev<CR>")
