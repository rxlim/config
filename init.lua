-- Set leader to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Color scheme
require("onedark").setup({
    style = "darker"
})
vim.cmd["colorscheme"]("onedark")

-- Status bar
require("lualine").setup {
	options = {
		icons_enabled = false,
		theme = "onedark",
		component_separators = "|",
		section_separators = ""
	}
}

-- File explorer (use a nerd font!)
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
require("neo-tree").setup({
    enable_git_status = true,
    close_if_last_window = true,
    filesystem = {
        follow_current_file = true
    }
})
vim.keymap.set("n", "<leader>e", ":e .<cr>")

-- Telescope
require("telescope").setup({
    defaults = {
        file_ignore_patterns = { ".git" } 
    }
})
pcall(require('telescope').load_extension, 'fzf')
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })

-- Filetype specific options
vim.cmd["filetype"]("plugin on")

-- Line numbers
vim.o.number = true

-- Set current dir to current file
vim.o.autochdir = true

-- highlight search term
vim.o.hlsearch = true

-- Switch to last buffer with §
vim.keymap.set("n", "§", ":e#<cr>")

-- Show tab completion cmd list
vim.o.wildmode = "longest:full,full"

