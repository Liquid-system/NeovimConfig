return {
  "uloco/bluloco.nvim",
  dependencies = "rktjmp/lush.nvim",
  lazy = true,
  config = true,
  init = function()
    vim.cmd "colorscheme bluloco"
  end,
}
