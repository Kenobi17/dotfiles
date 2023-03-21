-- TOKYIONIGHT
-- return {
--   "folke/tokyonight.nvim",
--   lazy = true,
--   config = {
--     -- your configuration comes here
--     -- or leave it empty to use the default settings
--     style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--     light_style = "day", -- The theme is used when the background is set to light
--     transparent = true, -- Enable this to disable setting the background color
--     terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--     styles = {
--       -- Style to be applied to different syntax groups
--       -- Value is any valid attr-list value for `:help nvim_set_hl`
--       comments = { italic = true },
--       keywords = { italic = true },
--       functions = {},
--       variables = {},
--       -- Background styles. Can be "dark", "transparent" or "normal"
--       sidebars = "transparent", -- style for sidebars, see below
--       floats = "transparent", -- style for floating windows
--     },
--     sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--     day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--     hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--     dim_inactive = true, -- dims inactive windows
--     lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
--   },
-- }

-- GRUVBOX
return {
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      undercurl = true,
      underline = true,
      -- bold = true,
      -- italic = true,
      -- strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "hard", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
-- ONE DARK
-- return {
--   {
--     "navarasu/onedark.nvim",
--     config = {
--       -- Main options --
--       style = "warmer", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--       transparent = true, -- Show/hide background
--       term_colors = true, -- Change terminal color as per the selected theme style
--       ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
--       cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
--
--       -- toggle theme style ---
--       toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
--       toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
--
--       -- Change code style ---
--       -- Options are italic, bold, underline, none
--       -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
--       code_style = {
--         comments = "italic",
--         keywords = "none",
--         functions = "none",
--         strings = "none",
--         variables = "none",
--       },
--
--       -- Lualine options --
--       lualine = {
--         transparent = false, -- lualine center bar transparency
--       },
--
--       -- Custom Highlights --
--       colors = {}, -- Override default colors
--       highlights = {}, -- Override highlight groups
--
--       -- Plugins Config --
--       diagnostics = {
--         darker = true, -- darker colors for diagnostic
--         undercurl = true, -- use undercurl instead of underline for diagnostics
--         background = true, -- use background color for virtual text
--       },
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "onedark",
--     },
--   },
-- }

-- CATPPUCCIN
-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     config = {
--       flavour = "mocha", -- latte, frappe, macchiato, mocha
--       background = { -- :h background
--         light = "latte",
--         dark = "mocha",
--       },
--       transparent_background = true,
--       show_end_of_buffer = false, -- show the '~' characters after the end of buffers
--       term_colors = false,
--       dim_inactive = {
--         enabled = true,
--         shade = "dark",
--         percentage = 0.15,
--       },
--       no_italic = false, -- Force no italic
--       no_bold = false, -- Force no bold
--       styles = {
--         comments = { "italic" },
--         conditionals = { "italic" },
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--       },
--       color_overrides = {},
--       custom_highlights = {},
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         telescope = true,
--         notify = false,
--         mini = false,
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--       },
--     },
--     -- ALTERNATE THEME
--     -- config = {
--     --   flavour = "mocha", -- latte, frappe, macchiato, mocha
--     --   term_colors = true,
--     --   transparent_background = false,
--     --   no_italic = false,
--     --   no_bold = false,
--     --   styles = {
--     --     comments = {},
--     --     conditionals = {},
--     --     loops = {},
--     --     functions = {},
--     --     keywords = {},
--     --     strings = {},
--     --     variables = {},
--     --     numbers = {},
--     --     booleans = {},
--     --     properties = {},
--     --     types = {},
--     --   },
--     --   color_overrides = {
--     --     mocha = {
--     --       base = "#000000",
--     --       mantle = "#000000",
--     --       crust = "#000000",
--     --     },
--     --   },
--     --   highlight_overrides = {
--     --     mocha = function(C)
--     --       return {
--     --         TabLineSel = { bg = C.pink },
--     --         CmpBorder = { fg = C.surface2 },
--     --         Pmenu = { bg = C.none },
--     --         TelescopeBorder = { link = "FloatBorder" },
--     --       }
--     --     end,
--     --   },
--     -- },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin",
--     },
--   },
-- }
