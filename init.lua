-- leaderキーをspaceに変更
vim.g.mapleader = " "
if vim.env.NVIM_COLORSCHEME == nil then
  vim.env.NVIM_COLORSCHEME = "gruvbox"
end
if vim.tbl_contains(vim.fn.getcompletion('', 'color'), vim.env.NVIM_COLORSCHEME) then
  vim.cmd('colorscheme ' .. vim.env.NVIM_COLORSCHEME)
end
require "core.lazy"
require "core.options"

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    require "core.config"
    require "core.autocmd"
    require "core.keymap"
  end,
})
