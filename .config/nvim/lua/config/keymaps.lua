-- Remap for dvorak config

-- Cursor Move (dvorak)
vim.keymap.set("n", "h", "<Left>")
vim.keymap.set("n", "t", "<Down>")
vim.keymap.set("n", "n", "<Up>")
vim.keymap.set("n", "s", "<Right>")

-- Window Move (dvorak)
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-t>", "<C-w>j")
vim.keymap.set("n", "<C-n>", "<C-w>k")
vim.keymap.set("n", "<C-s>", "<C-w>l")

-- Search Move
vim.keymap.set("n", "b", "n")
vim.keymap.set("n", "B", "N")

-- Replace overload
vim.keymap.set("n", "l", "s")
vim.keymap.set("n", "L", "S")
