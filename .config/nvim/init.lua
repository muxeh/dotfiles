-- plugins
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer can manage itself
    use 'goolord/alpha-nvim'     -- Splash screen plugin
    use 'nvim-lua/plenary.nvim' -- Dependency for Telescope
    use 'nvim-telescope/telescope.nvim'
end)

-- telescope plugin
-- Ensure splits open on the right
vim.opt.splitright = true
require('telescope').setup {
    defaults = {
        mappings = {
            i = { ["<C-v>"] = require('telescope.actions').select_vertical }, -- Ctrl + V for vertical split in insert mode
            n = { ["<C-v>"] = require('telescope.actions').select_vertical }, -- Ctrl + V for vertical split in normal mode
        },
    },
}
-- Map <leader>fr to search for recent files
vim.keymap.set('n', '<leader>fr', require('telescope.builtin').oldfiles, { noremap = true, silent = true, desc = "Fuzzy find recent files" })

-- set space as leader
vim.g.mapleader = " "  -- Set space as the leader key

-- set write as space + w
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })

-- Set timeout for key sequences (default is 1000ms, adjust as needed)
vim.o.timeoutlen = 300  -- Set a shorter timeout (300ms) for rapid `kj` typing

-- Exit Insert Mode with 'kj'
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true, silent = true })

-- Map Shift + h to go to the first non-blank character of the line
vim.api.nvim_set_keymap('n', '<S-h>', '^', { noremap = true, silent = true })

-- Map Shift + j to jump 20 lines down
vim.api.nvim_set_keymap('n', '<S-j>', '20j', { noremap = true, silent = true })

-- Map Shift + k to jump 20 lines up
vim.api.nvim_set_keymap('n', '<S-k>', '20k', { noremap = true, silent = true })

-- Map Shift + l to go to the end of the line
vim.api.nvim_set_keymap('n', '<S-l>', '$', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-l>', '$', { noremap = true, silent = true })

-- Map <leader>r to redo
vim.keymap.set('n', '<leader>r', '<C-r>', { noremap = true, silent = true })

-- Require the alpha plugin
local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')
-- Set the header
dashboard.section.header.val = {
    "Welcome to Neovim",
    "Choose an option:",
    "r = Open a recent file",
    "f = Find a file",
    "c = Open config",
}
-- Set buttons for keybindings
dashboard.section.buttons.val = {
    dashboard.button("r", " Open recent file", ":Telescope oldfiles<CR>"),
    dashboard.button("f", " Find a file", ":Telescope find_files<CR>"),
    dashboard.button("c", " Open config", ":edit ~/.config/nvim/init.lua<CR>"),
    dashboard.button("q", " Quit Neovim", ":qa<CR>"),
}
-- Set the footer
dashboard.section.footer.val = "Happy coding with Neovim!"
-- Apply the dashboard configuration
alpha.setup(dashboard.opts)
