return {
  -- Git client
  {
    "tpope/vim-fugitive",
    keys = {
      { "<leader>gg", "<cmd>Git<cr>", desc = "[G]it status" },
      { "<leader>gm", "<cmd>Git commit<cr>", desc = "[G]it co[m]mit" },
      { "<leader>gw", "<cmd>Gwrite<cr>", desc = "[G]it write" },
      { "<leader>gp", "<cmd>Git push<cr>", desc = "[G]it push" },
    },
  },
}
