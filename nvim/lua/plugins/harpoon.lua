return {
  "ThePrimeagen/harpoon",
  lazy = true,
  keys = {
    {
      "<leader>H",
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "Open Harpoon Menu",
    },
    {
      "<leader>M",
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Leave Harpoon Mark",
    },
    {
      "<leader>1",
      function()
        require("harpoon.ui").nav_file(1)
      end,
      desc = "Go to Harpoon Mark 1",
    },
    {
      "<leader>2",
      function()
        require("harpoon.ui").nav_file(2)
      end,
      desc = "Go to Harpoon Mark 2",
    },
    {
      "<leader>3",
      function()
        require("harpoon.ui").nav_file(3)
      end,
      desc = "Go to Harpoon Mark 3",
    },
    {
      "<leader>4",
      function()
        require("harpoon.ui").nav_file(4)
      end,
      desc = "Go to Harpoon Mark 4",
    },
    {
      "<leader>5",
      function()
        require("harpoon.ui").nav_file(5)
      end,
      desc = "Go to Harpoon Mark 5",
    },
  },
  config = function()
    require("harpoon").setup({})
  end,
}
