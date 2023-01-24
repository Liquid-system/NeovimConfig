return {
  "monaqa/dial.nvim",
  config = function()
    local augend = require("dial.augend")
    require("dial.config").augends:register_group {
      default = {
        augend.constant.alias.bool,
        augend.integer.alias.decimal,
        augend.integer.alias.hex,
        augend.date.alias["%Y/%m/%d"],
        -- uppercase hex number (0x1A1A, 0xEEFE, etc.)
        augend.hexcolor.new {
          case = "lower",
        },
        augend.constant.new {
          elements = { "and", "or" },
          word = true, -- if false, "sand" is incremented into "sor", "doctor" into "doctand", etc.
          cyclic = true, -- "or" is incremented into "and".
        },
        augend.constant.new {
          elements = { "&&", "||" },
          word = false,
          cyclic = true,
        },
      },
      typescript = {
        augend.integer.alias.decimal,
        augend.integer.alias.hex,
        augend.constant.new {
          elements = { "let", "const" },
          word = true,
          cyclic = true,
        },
      },
      visual = {
        augend.integer.alias.decimal,
        augend.integer.alias.hex,
        augend.date.alias["%Y/%m/%d"],
        augend.constant.alias.alpha,
        augend.constant.alias.Alpha,
      },
    }
  end,
  init = function()
    vim.api.nvim_set_keymap("n", "<C-a>", require("dial.map").inc_normal(), { noremap = true })
    vim.api.nvim_set_keymap("n", "<C-x>", require("dial.map").dec_normal(), { noremap = true })
    vim.api.nvim_set_keymap("v", "<C-a>", require("dial.map").inc_visual("visual"), { noremap = true })
    vim.api.nvim_set_keymap("v", "<C-x>", require("dial.map").dec_visual("visual"), { noremap = true })
    vim.api.nvim_set_keymap("v", "g<C-a>", require("dial.map").inc_gvisual(), { noremap = true })
    vim.api.nvim_set_keymap("v", "g<C-x>", require("dial.map").dec_gvisual(), { noremap = true })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "typescript",
        "javascript"
      },
      callback = function()
        vim.api.nvim_buf_set_keymap(0, "n", "<C-a>", require("dial.map").inc_normal("typescript"), { noremap = true })
        vim.api.nvim_buf_set_keymap(0, "n", "<C-x>", require("dial.map").dec_normal("typescript"), { noremap = true })
      end
    })
  end
}
