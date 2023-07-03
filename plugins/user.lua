return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  "mfussenegger/nvim-dap-python",
  ft = "python",
  opts = {
  },
  config = function ()
    require("dap-python").setup('~/venvs/debugpy/bin/python', opts)
  end,
}
