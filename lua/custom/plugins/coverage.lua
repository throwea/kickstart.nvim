return {
  'andythigpen/nvim-coverage',
  requires = 'nvim-lua/plenary.nvim',
  -- Optional: needed for PHP when using the cobertura parser
  config = function()
    require('coverage').setup()
  end,
  keys = {
    { vim.keymap.set('n', '<leader>tc', function()
      require('coverage').toggle()
    end, { desc = 'Show [t]est [c]overage' }) },
  },
}
