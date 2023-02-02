return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = true,
  opts = {
    disable_italics = true,
  },
  init = function()
    vim.cmd "colorscheme rose-pine"
  end,
}
