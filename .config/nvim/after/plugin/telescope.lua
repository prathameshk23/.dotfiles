require('telescope').setup {
  file_ignore_patterns = { "node_modules", "./node_modules", "./node_modules/*" }
}
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>p', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
