--[[
'' (an empty string)	mapmode-nvo	Normal, Visual, Select, Operator-pending
'n' Normal	:nmap
'v' Visual and Select
's' Select	:smap
'x' Visual	:xmap
'o' Operator-pending
'!' Insert and Command-line
'i' Insert	:imap
'l' Insert, Command-line, Lang-Arg
'c' Command-line
't' Terminal
--]]
local default_opts = { silent = true, noremap = true }

-- jjでノーマルモードへ移行
vim.keymap.set("t", "jj", "<ESC>", default_opts)
--ESCで点滅が消える
vim.keymap.set("n", "<ESC>", "<cmd>nohl<CR><ESC>", default_opts)
vim.keymap.set("t", "<ESC>", [[<C-\><C-n>]], default_opts)
--tabを使用する
vim.keymap.set("i", "<Leader><tab>", "<C-v><tab>", default_opts)
-- 論理行を表示行に置き換える
vim.keymap.set("n", "k", "gk", default_opts)
vim.keymap.set("n", "j", "gj", default_opts)
vim.keymap.set("n", "0", "g0", default_opts)
vim.keymap.set("n", "^", "g^", default_opts)
vim.keymap.set("n", "$", "g$", default_opts)
-- ビジュアルモードで < > キーによるインデント後にビジュアルモードが解除されないようにする
vim.keymap.set("v", "<", "<gv", default_opts)
vim.keymap.set("v", ">", ">gv", default_opts)
-- コマンドで削除した時はヤンクしない
vim.keymap.set("n", "x", '"_x', default_opts)
vim.keymap.set("v", "x", '"_x', default_opts)
-- コピペ時の自動インデント
--[[ vim.keymap.set("n", "p", "]p", default_opts)
vim.keymap.set("n", "P", "]P", default_opts)
vim.keymap.set("n", "]p", "p", default_opts)
vim.keymap.set("n", "]P", "P", default_opts) ]]
-- バッファサイズの変更
vim.keymap.set("n", "<Up>", "<cmd>resize +1<CR>", default_opts)
vim.keymap.set("n", "<Down>", "<cmd>resize -1<CR>", default_opts)
vim.keymap.set("n", "<Left>", "<cmd>vertical resize -1<CR>", default_opts)
vim.keymap.set("n", "<Right>", "<cmd>vertical resize +1<CR>", default_opts)
-- バッファ間のカーソルの移動
vim.keymap.set("n", "<Leader>w", "<C-w>", default_opts)
vim.keymap.set("n", "<Leader>j", "<C-w>j", default_opts)
vim.keymap.set("n", "<Leader>k", "<C-w>k", default_opts)
vim.keymap.set("n", "<Leader>h", "<C-w>h", default_opts)
vim.keymap.set("n", "<Leader>l", "<C-w>l", default_opts)
-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
vim.keymap.set("n", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
vim.keymap.set("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
vim.keymap.set("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
vim.keymap.set("n", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
vim.keymap.set("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
vim.keymap.set("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
