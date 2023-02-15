return {
  "jackMort/ChatGPT.nvim",
  lazy = true,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = true,
  cmd = { "ChatGPT", "ChatGPTActAs", "ChatGPTEditWithInstructions" },
  keys = {
    { "gpt", "<cmd>ChatGPT<cr>", desc = "Open ChatGPT" },
    { "gpta", "<cmd>ChatGPTActAs<cr>", desc = "Open ChatGPTActAs" },
    { "gpte", "<cmd>ChatGPTEditWithInstructions<cr>", desc = "Open ChatGPTEditWithInstructions" },
  },
}
