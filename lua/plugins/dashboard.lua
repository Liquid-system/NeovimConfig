local function footer()
  local v = vim.version()
  local datetime = os.date "     %Y-%m-%d   %H:%M:%S"
  local platform = vim.fn.has "win32" == 1 and "" or ""
  return string.format("%s v%d.%d.%d %s", datetime, v.major, v.minor, v.patch, platform)
end

return {
  "glepnir/dashboard-nvim",
  event = "VimEnter",
  opts = {
    theme = "doom",
    config = {
      header = {
        "",
        "",
        "",
        "",
        "  ██╗     ██╗ ██████╗ ██╗   ██╗██╗██████╗ ███████╗██╗   ██╗███████╗████████╗███████╗███╗   ███╗",
        "  ██║     ██║██╔═══██╗██║   ██║██║██╔══██╗██╔════╝╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔════╝████╗ ████║",
        "  ██║     ██║██║   ██║██║   ██║██║██║  ██║███████╗ ╚████╔╝ ███████╗   ██║   █████╗  ██╔████╔██║",
        "  ██║     ██║██║▄▄ ██║██║   ██║██║██║  ██║╚════██║  ╚██╔╝  ╚════██║   ██║   ██╔══╝  ██║╚██╔╝██║",
        "  ███████╗██║╚██████╔╝╚██████╔╝██║██████╔╝███████║   ██║   ███████║   ██║   ███████╗██║ ╚═╝ ██║",
        "  ╚══════╝╚═╝ ╚══▀▀═╝  ╚═════╝ ╚═╝╚═════╝ ╚══════╝   ╚═╝   ╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝",
        "",
        "",
        "",
      },
      center = {
        {
          icon = " ",
          icon_hl = "group",
          desc = "Quit NVIM",
          desc_hl = "group",
          action = "qa",
        },
        {
          icon = " ",
          icon_hl = "group",
          desc = "Recently opened files",
          desc_hl = "group",
          action = "Telescope oldfiles",
          shortcut = "   ",
        },
        {
          icon = " ",
          icon_hl = "group",
          desc = "Find File",
          desc_hl = "group",
          action = "Telescope find_files find_command=rg,--hidden,--files",
          shortcut = "",
        },
        {
          icon = " ",
          icon_hl = "group",
          desc = "Update Plugins",
          desc_hl = "group",
          shortcut = "  ",
          action = "Lazy",
        },
      },
      footer = { footer() },
    },
  },
}
