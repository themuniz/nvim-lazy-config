-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})

-- Editing
vim.keymap.set("n", "<leader>cq", "<cmd>.s/'/`/g", { desc = "[C]hange [q]uotation mark" })
vim.keymap.set("n", "<leader>}", "O<esc>j", { desc = "Insert line above" })
vim.keymap.set("n", "<leader>}", "o<ec>k", { desc = "Insert line below" })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- vim.keymap.set({ 'n' }, '<leader>du', '<cmd>DBUI<cr>', { desc = '[D]atabse [U]I', silent = true })
vim.keymap.set({ "n" }, "<leader>m", "<cmd>Mason<cr>", { desc = "[M]ason", silent = true })
vim.keymap.set({ "n" }, "<leader>cq", "<cmd>.s/'/`/g<cr>|f`", { desc = "[C]hange [q]uotation mark", silent = true })
-- vim.keymap.set('n', '<leader>un', vim.cmd.UndotreeToggle, { desc = 'Toggle [UN]do tree' })
