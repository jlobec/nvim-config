-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Pick a buffer
local opts = { silent = true }

-- Back to normal mode
vim.keymap.set({ "i", "t" }, "jk", "<ESC>", opts)

-- New tab
vim.keymap.set("n", "te", ":tabedit")
vim.keymap.set("n", "<tab>", ":tabnext<Return>", opts)
vim.keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
vim.keymap.set("n", "ss", ":split<Return>", opts)
vim.keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Code actions
--   Go to implementation
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to Implementation" })

--   IncRename rename
vim.keymap.set("n", "<leader>r", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true, desc = "Rename (IncRename)" })

function _G.set_terminal_keymaps()
  local termOpts = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], termOpts)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], termOpts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], termOpts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], termOpts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], termOpts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], termOpts)
  vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], termOpts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
