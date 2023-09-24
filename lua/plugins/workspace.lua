return {
  {
    "natecraddock/workspaces.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    opts = function(_, opts)
      local workspaces = require("workspaces")
      local telescope = require('telescope')
      telescope.load_extension("workspaces")
      workspaces.setup({
        path = vim.fn.stdpath("data") .. "/workspaces",
        hooks = {
            open = { "Telescope find_files" },
        }
      })
   end,
    keys = {
      { "<leader>xw", "<cmd>Telescope workspaces<cr>", desc = "Workspaces" },
    }
  }
}
