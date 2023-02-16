-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Move Lines
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move up" })
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move down" })

-- Cursor stays in middle when jumping half page
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Paste over highlighted without losing what's in clipboard
map("x", "<leader>p", '"_dP')

-- Delete without yanking, cut with <leader>
map("n", "x", '"_x')
map("n", "X", '"_X')
map("n", "d", '"_d')
map("n", "D", '"_D')
map("v", "d", '"_d')

map("n", "<leader>d", '""d', { desc = "Cut" })
map("n", "<leader>D", '""D', { desc = "Cut" })
map("v", "<leader>d", '""d', { desc = "Cut" })

-- Exit insert mode with JK
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Delete all opened buffers
map("n", "<leader>bX", "<cmd>%bdelete | Neotree toggle current reveal_force_cwd <cr>", { desc = "Delete all buffers" })
