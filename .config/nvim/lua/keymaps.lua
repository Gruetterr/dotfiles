vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>')

vim.keymap.set('n', '<leader>mp', ':!pandoc %:p -o %:p:r.pdf<CR>', { noremap = true, silent = true })
