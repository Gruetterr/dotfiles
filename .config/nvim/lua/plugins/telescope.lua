return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
      dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-tree/nvim-web-devicons', enabled = true},
      },
      config = function()
        require('telescope').setup()
        
        local builtin = require 'telescope.builtin'
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffers' })
        vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Search Help' })
 
      end,  
}
