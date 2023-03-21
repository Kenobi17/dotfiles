return {
  "dbinagi/nomodoro",
  lazy = true,
  config = true,
  cmd = { "NomoWork", "NomoBreak", "NomoStop" },
  keys = {
    { "<leader>nw", "<cmd>NomoWork<cr>", desc = "Start pomodoro" },
    { "<leader>nb", "<cmd>NomoBreak<cr>", desc = "Start pomodoro break" },
    { "<leader>ns", "<cmd>NomoStop<cr>", desc = "Stop pomodoro" },
    { "<leader>nt", ":NomoTimer", desc = "Start timer for 'X' minutes" },
  },
}
