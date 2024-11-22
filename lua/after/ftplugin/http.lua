vim.keymap.set('n', '<CR>', "<cmd>lua require('kulala').run()<cr>", { desc = 'Execute an http request', silent = true, noremap = true })
-- vim.keymap.set('n', '[', "<cmd>lua require('kulala').jump_prev()<cr>", { noremap = true, silent = true, desc = 'Jump to the previous request' })
-- vim.keymap.set('n', ']', "<cmd>lua require('kulala').jump_next()<cr>", { noremap = true, silent = true, desc = 'Jump to the next request' })
vim.keymap.set('n', '<leader>i', "<cmd>lua require('kulala').inspect()<cr>", { noremap = true, silent = true, desc = 'Inspect the current request' })
vim.keymap.set(
  'n',
  '<leader>co',
  "<cmd>lua require('kulala').copy()<cr>",
  { noremap = true, silent = true, desc = 'Copy the current request as a curl command' }
)
vim.keymap.set(
  'n',
  '<leader>ci',
  "<cmd>lua require('kulala').from_curl()<cr>",
  { noremap = true, silent = true, desc = 'Paste curl from clipboard as http request' }
)
vim.keymap.set('n', '<leader>t', "<cmd>lua require('kulala').toggle_view()<cr>", { noremap = true, silent = true, desc = 'Toggle between body and headers' })
