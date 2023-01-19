return {
  "uloco/bluloco.nvim",
  dependencies = "rktjmp/lush.nvim",
  lazy = true,
  priority = 1000,
  config = true,
  init = function()
    vim.cmd("colorscheme bluloco")
  end
}
