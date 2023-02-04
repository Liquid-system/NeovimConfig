local Mode = {}

Mode.modes = {
  ["n"] = {
    name = "NORMAL",
  },
  ["no"] = {
    name = "O-PENDING",
  },
  ["nov"] = {
    name = "O-PENDING",
  },
  ["noV"] = {
    name = "O-PENDING",
  },
  ["no\22"] = {
    name = "O-PENDING",
  },
  ["niI"] = {
    name = "NORMAL",
  },
  ["niR"] = {
    name = "NORMAL",
  },
  ["niV"] = {
    name = "NORMAL",
  },
  ["nt"] = {
    name = "NORMAL",
  },
  ["ntT"] = {
    name = "NORMAL",
  },
  ["v"] = {
    name = "VISUAL",
  },
  ["vs"] = {
    name = "VISUAL",
  },
  ["V"] = {
    name = "V-LINE",
  },
  ["Vs"] = {
    name = "V-LINE",
  },
  ["\22"] = {
    name = "V-BLOCK",
  },
  ["\22s"] = {
    name = "V-BLOCK",
  },
  ["s"] = {
    name = "SELECT",
  },
  ["S"] = {
    name = "S-LINE",
  },
  ["\19"] = {
    name = "S-BLOCK",
  },
  ["i"] = {
    name = "INSERT",
  },
  ["ic"] = {
    name = "INSERT",
  },
  ["ix"] = {
    name = "INSERT",
  },
  ["R"] = {
    name = "REPLACE",
  },
  ["Rc"] = {
    name = "REPLACE",
  },
  ["Rx"] = {
    name = "REPLACE",
  },
  ["Rv"] = {
    name = "V-REPLACE",
  },
  ["Rvc"] = {
    name = "V-REPLACE",
  },
  ["Rvx"] = {
    name = "V-REPLACE",
  },
  ["c"] = {
    name = "COMMAND",
  },
  ["cv"] = {
    name = "EX",
  },
  ["ce"] = {
    name = "EX",
  },
  ["r"] = {
    name = "REPLACE",
  },
  ["rm"] = {
    name = "MORE",
  },
  ["r?"] = {
    name = "CONFIRM",
  },
  ["!"] = {
    name = "SHELL",
  },
  ["t"] = {
    name = "TERMINAL",
  },
}

return Mode
