-- Disable netrw at the very start
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

-- [[ Setting Options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure and install plugins ]]
require 'lazy-plugins'

-- Close netrw buffer if opened on startup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Check if the buffer is 'netrw'
    if vim.fn.bufname("%") == "netrw" then
      vim.cmd("quit")  -- Close the 'netrw' buffer
    end
  end,
})

-- Load Telescope after startup (for example, opening file search)
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require('telescope.builtin').find_files()  -- Opens Telescope file finder
  end,
})

-- Close netrw when opening a file
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "netrw*",
  callback = function()
    -- Close the netrw buffer if a file is open
    if vim.fn.expand("%") ~= "" then
      vim.cmd("bdelete")
    end
  end,
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
