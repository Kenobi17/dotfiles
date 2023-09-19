local icons = require("lazyvim.config").icons
local Util = require("lazyvim.util")
local colors = {
  [""] = Util.fg("Special"),
  ["Normal"] = Util.fg("Special"),
  ["Warning"] = Util.fg("DiagnosticError"),
  ["InProgress"] = Util.fg("DiagnosticWarn"),
}
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
      lualine_y = {
        "copilot",
        {

          function()
            local icon = require("lazyvim.config").icons.kinds.Copilot
            local status = require("copilot.api").status.data
            return icon .. (status.message or "")
          end,
          cond = function()
            local ok, clients = pcall(vim.lsp.get_active_clients, { name = "copilot", bufnr = 0 })
            return ok and #clients > 0
          end,
          color = function()
            if not package.loaded["copilot"] then
              return
            end
            local status = require("copilot.api").status.data
            return colors[status.status] or colors[""]
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
