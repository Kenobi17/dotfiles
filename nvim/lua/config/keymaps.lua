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
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move selected up" })
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move selected down" })

-- Cursor stays in middle when jumping half page
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Paste over highlighted without losing what's in clipboard
map("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })

-- Copy to system clipboard
map("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("n", "<leader>Y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>Y", '"+y', { desc = "Yank to system clipboard" })

-- Delete without yanking
map("n", "<leader>d", '"_d', { desc = "Delete without yanking" })
map("v", "<leader>d", '"_d', { desc = "Delete without yanking" })
map("n", "<leader>D", '"_d', { desc = "Delete without yanking" })
map("v", "<leader>D", '"_d', { desc = "Delete without yanking" })

-- Exit insert mode with JK
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })
map("i", "JK", "<ESC>", { desc = "Exit insert mode" })

-- Delete all opened buffers
map("n", "<leader>bX", "<cmd>%bdelete | Neotree toggle current reveal_force_cwd <cr>", { desc = "Delete all buffers" })
