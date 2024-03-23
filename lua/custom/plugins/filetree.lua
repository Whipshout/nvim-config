return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      source_selector = {
        winbar = true,
        statusline = true,
      },
    }
    vim.api.nvim_set_keymap('n', '<leader>a', ':Neotree toggle<CR>', { noremap = true, silent = true })
    vim.cmd [[autocmd VimEnter * Neotree]]
  end,
}
