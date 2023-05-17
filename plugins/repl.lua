return {
  {
    "geg2102/nvim-python-repl",
    opts = {
      spawn_command = {
        python = "ipython3"
      }
    },
    keys = {
      { "<leader>sn", "<cmd>SendPyObject<CR>"},
      -- The keymap for sending from visual only works after the first time
      -- it was used. On the first time it sends an empty string. Weird.
      { "<leader>sn", function() require('nvim-python-repl').send_visual_to_repl() end, mode = "v"},
      { "<leader>se", "<cmd>ToggleExecuteOnSend<CR>"},
      { "<leader>sb", "<cmd>SendPyBuffer<CR>"},
      { "<leader>sv", "<cmd>ReplToggleVertical<CR>"},
    },
  },
  {
    "Vigemus/iron.nvim",
    opts = {
      config = {
        repl_definition = {
          python = {
            command = "ipython3"
          },
        },
        repl_open_cmd = "vertical botright 80 split"
      },
      keymaps = {
        send_motion = "<leader>sc",
        visual_send = "<leader>sc",
        send_file = "<leader>sf",
        send_line = "<leader>sl",
      },
    },
    config = function (plugin, opts)
      local iron = require("iron.core")
      iron.setup(opts)
    end,
    keys = {
      { "<leader>rs", "<cmd>IronRepl<CR>", "n"},
      { "<leader>rr", "<cmd>IronRestart<CR>", "n"},
    },
    enabled = false,
  }
}
