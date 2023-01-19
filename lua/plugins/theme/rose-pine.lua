return {
  "rose-pine/neovim",
    name = "rose-pine",
  lazy = true,
  priority = 1000,
  opts = {
    disable_italics = true,
  },
  init = function()
    vim.cmd "colorscheme rose-pine"
  end,
}
