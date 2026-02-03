return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      local wk = require("which-key")
      wk.add({
        { "<leader>a", group = "󰚩 Opencode" },
      })
      return opts
    end,
  },

  {
    "NickvanDyke/opencode.nvim",
    dependencies = {
      { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
    },
    keys = {
      {
        "<leader>aa",
        function()
          require("opencode").ask("@this: ", { submit = true })
        end,
        mode = { "n", "x" },
        desc = "󰭻 Ask opencode",
      },
      {
        "<leader>ae",
        function()
          require("opencode").select()
        end,
        mode = { "n", "x" },
        desc = "󰭷 Execute opencode action",
      },
      {
        "<leader>at",
        function()
          require("opencode").toggle()
        end,
        mode = { "n", "t" },
        desc = "󰐰 Toggle opencode panel",
      },

      {
        "<leader>ar",
        function()
          return require("opencode").operator("@this ")
        end,
        mode = { "n", "x" },
        expr = true,
        desc = "󰩨 Add range to opencode",
      },
      {
        "<leader>al",
        function()
          return require("opencode").operator("@this ") .. "_"
        end,
        mode = "n",
        expr = true,
        desc = "󰩨 Add line to opencode",
      },

      {
        "<leader>au",
        function()
          require("opencode").command("session.half.page.up")
        end,
        mode = "n",
        desc = "󰞕 Scroll opencode up",
      },
      {
        "<leader>ad",
        function()
          require("opencode").command("session.half.page.down")
        end,
        mode = "n",
        desc = "󰞒 Scroll opencode down",
      },
    },
    config = function()
      vim.g.opencode_opts = {}
      vim.o.autoread = true
    end,
  },
}
