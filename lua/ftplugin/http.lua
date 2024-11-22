return {
  'mistweaverco/kulala.nvim',
  opts = {},
  keys = {
    {
      vim.api.nvim_buf_set_keymap(0, 'n', '<CR>', "<cmd>lua require('kulala').run()<cr>", { desc = 'Execute an http request', silent = true, noremap = true }),
    },
    {
      vim.api.nvim_buf_set_keymap(
        0,
        'n',
        '[',
        "<cmd>lua require('kulala').jump_prev()<cr>",
        { noremap = true, silent = true, desc = 'Jump to the previous request' }
      ),
    },
    {
      vim.api.nvim_buf_set_keymap(
        0,
        'n',
        ']',
        "<cmd>lua require('kulala').jump_next()<cr>",
        { noremap = true, silent = true, desc = 'Jump to the next request' }
      ),
    },
  },
}
