return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    opts = {
      italic = false,
    },
    init = function()
      vim.cmd "colorscheme gruvbox"
    end,
  },
}
