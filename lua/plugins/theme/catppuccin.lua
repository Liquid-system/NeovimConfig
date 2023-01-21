return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = true,
  opts = {
    flavour = "latte",
    no_italic = true,
  },
  init = function()
    vim.cmd.colorscheme "catppuccin"
  end,
}
