return {
  "L3MON4D3/LuaSnip",
  build = "make install_jsregexp",
  event = "InsertEnter",
  dependencies = {
    {
      "rafamadriz/friendly-snippets",
      event = "InsertEnter",
    },
  },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
