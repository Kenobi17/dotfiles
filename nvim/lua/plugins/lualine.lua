return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      globalstatus = false,
      theme = "gruvbox",
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = {
        {
          "diagnostics",
          symbols = {
            error = 'E',
            warn = 'W',
            info = 'I',
            hint = 'H',
          },
        },
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
      },
      lualine_x = {
        "location",
        {
          padding = { left = 1, right = 1 },
          function()
            local starts = vim.fn.line("v")
            local ends = vim.fn.line(".")
            local count = starts <= ends and ends - starts + 1 or starts - ends + 1
            local wc = vim.fn.wordcount()
            return count .. ":" .. wc["visual_chars"]
          end,
          cond = function()
            return vim.fn.mode():find("[Vv]") ~= nil
          end,
        },
      },
      lualine_z = {
        function()
          return " " .. os.date("%R")
        end,
      },
    },
    inactive_sections = {
      lualine_a = { "mode" },
      lualine_b = {
        {
          "diagnostics",
          symbols = {
            error = 'E',
            warn = 'W',
            info = 'I',
            hint = 'H',
          },
        },
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
      },
      lualine_z = {
        function()
          return " " .. os.date("%R")
        end,
      },
    },
  },
}
