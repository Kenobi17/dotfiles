local icons = require("lazyvim.config").icons
return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      globalstatus = false,
      theme = "tokyonight",
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = {
        {
          "diagnostics",
          symbols = {
            error = icons.diagnostics.Error,
            warn = icons.diagnostics.Warn,
            info = icons.diagnostics.Info,
            hint = icons.diagnostics.Hint,
          },
        },
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
      },
      lualine_x = {
        { "location", padding = { left = 0, right = 1 } },
      },
      lualine_y = {
        function()
          return require("nomodoro").status()
        end,
      },
      lualine_z = {
        function()
          return " " .. os.date("%R")
        end,
      },
    },
    inactive_sections = {
      lualine_a = { "branch" },
      lualine_b = {
        {
          "diagnostics",
          symbols = {
            error = icons.diagnostics.Error,
            warn = icons.diagnostics.Warn,
            info = icons.diagnostics.Info,
            hint = icons.diagnostics.Hint,
          },
        },
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
      },
      lualine_y = {
        function()
          return require("nomodoro").status()
        end,
      },
      lualine_z = {
        function()
          return " " .. os.date("%R")
        end,
      },
    },
  },
}
