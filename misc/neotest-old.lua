return {
  'nvim-neotest/neotest',
  enabled = false,
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'leolulz/nvim-dap-go',
    { 'fredrikaverpil/neotest-golang', version = '*' },
  },
  -- opts = {
  --   adapters = {
  --     ['neotest-golang'] = {
  --       dap_go_enabled = true,
  --       runner = 'gotestsum',
  --     },
  --   },
  -- },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-golang' {
          go_test_args = { '-v', '-race', '-count=1', '-timeout=60s' },
          testify_enabled = true,
          '-coverprofile=' .. vim.fn.getcwd() .. '/coverage.out',
        },
      },
    }
  end,
  keys = {
    {
      '<leader>tt',
      function()
        require('neotest').run.run(vim.fn.expand '%')
      end,
      desc = 'Run File (Neotest)',
    },
    {
      '<leader>tT',
      function()
        require('neotest').run.run(vim.uv.cwd())
      end,
      desc = 'Run All Test Files (Neotest)',
    },
    {
      '<leader>tr',
      function()
        require('neotest').run.run()
      end,
      desc = 'Run Nearest (Neotest)',
    },
    {
      '<leader>tl',
      function()
        require('neotest').run.run_last()
      end,
      desc = 'Run Last (Neotest)',
    },
    {
      '<leader>ts',
      function()
        require('neotest').summary.toggle()
      end,
      desc = 'Toggle Summary (Neotest)',
    },
    {
      '<leader>to',
      function()
        require('neotest').output.open { enter = true, auto_close = true }
      end,
      desc = 'Show Output (Neotest)',
    },
    {
      '<leader>tO',
      function()
        require('neotest').output_panel.toggle()
      end,
      desc = 'Toggle Output Panel (Neotest)',
    },
    {
      '<leader>tS',
      function()
        require('neotest').run.stop()
      end,
      desc = 'Stop (Neotest)',
    },
    {
      '<leader>tw',
      function()
        require('neotest').watch.toggle(vim.fn.expand '%')
      end,
      desc = 'Toggle Watch (Neotest)',
    },
  },
  -- config = function(_, opts)
  --   require('neotest').setup(opts)
  --   vim.keymap.set('n', '<leader>ta', function()
  --     require('neotest').run.attach()
  --   end, { desc = 'Attach' })
  --   vim.keymap.set('n', '<leader>tf', function()
  --     require('neotest').run.run(vim.fn.expand '%')
  --   end, { desc = 'Run File' })
  --   vim.keymap.set('n', '<leader>tA', function()
  --     require('neotest').run.run(vim.uv.cwd())
  --   end, { desc = 'Run All Test Files' })
  -- vim.keymap.set('n', '<leader>tT', function()
  --   require('neotest').run.run { suite = true }
  -- end, { desc = 'Run Test Suite' })
  -- vim.keymap.set('n', '<leader>tn', function()
  --   require('neotest').run.run()
  -- end, { desc = 'Run Nearest' })
  -- vim.keymap.set('n', '<leader>tl', function()
  --   require('neotest').run.run_last()
  -- end, { desc = 'Run Last' })
  -- vim.keymap.set('n', '<leader>ts', function()
  --   require('neotest').summary.toggle()
  -- end, { desc = 'Toggle Summary' })
  -- vim.keymap.set('n', '<leader>to', function()
  --   require('neotest').output.open { enter = true, auto_close = true }
  -- end, { desc = 'Show Output' })
  -- vim.keymap.set('n', '<leader>tO', function()
  --   require('neotest').output_panel.toggle()
  -- end, { desc = 'Toggle Output Panel' })
  -- vim.keymap.set('n', '<leader>tt', function()
  --   require('neotest').run.stop()
  -- end, { desc = 'Terminate' })
  -- vim.keymap.set('n', '<leader>td', function()
  --   vim.cmd 'Neotree close'
  --   require('neotest').summary.close()
  --   require('neotest').output_panel.close()
  --   require('neotest').run.run { suite = false, strategy = 'dap' }
  -- end, { desc = 'Debug nearest test' })
  --
}
