vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "<leader>vwm", function()
--   require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--   require("vim-with-me").StopVimWithMe()
-- end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

--for lazy git
vim.keymap.set("n", "<leader>g", "<cmd>lua _LAZYGIT_TOGGLE()<CR>, {noremap = true, silent = true}")

-- for git worktrees
vim.keymap.set("n", "<leader>gw", "<cmd>lua _TOGGLE_GITWORKTREE()<CR>")
vim.keymap.set("n", "<leader>cw", "<cmd>lua _CREATE_GITWORKTREE()<CR>")

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
-- vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

vim.keymap.set("n", "<leader>pv", "<cmd>NvimTreeFindFileToggle<CR>")

-- Runing python code
vim.keymap.set("n", "<leader>rx", ":vsp | term python %<CR>")

-- Tagbar
vim.keymap.set("n", "<F8>", ":TagbarToggle<CR>")

vim.keymap.set("n", "<leader>tr", ":tabe | ter<CR>")

vim.keymap.set("n", "<Leader>fp", ":Prettier<CR>")

-- Rust
vim.api.nvim_set_keymap("n", "<leader>r", ":vsp | term cargo run<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>b", ":vsp | term cargo build<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>t", ":vsp | term cargo test<CR>", {})
--Trouble
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  { silent = true, noremap = true }
)
