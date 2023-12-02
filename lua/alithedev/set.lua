-- Enable clipboard support using xclip
vim.cmd('set clipboard=unnamedplus')

-- Set the guicursor to an empty string (no cursor changes)
vim.opt.guicursor = ""

-- Enable line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Set tab-related options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable smart indenting
vim.opt.smartindent = true

-- Disable line wrapping
vim.opt.wrap = false

-- Disable swap files, backups, and use a custom undodir
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Disable highlighting during search and enable incremental search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Enable true color support in the terminal
vim.opt.termguicolors = true

-- Set the number of lines to keep above and below the cursor when scrolling
vim.opt.scrolloff = 8

-- Display the sign column (for signs like LSP diagnostics)
vim.opt.signcolumn = "yes"

-- Add '@-@' to the list of characters considered as part of a word
vim.opt.isfname:append("@-@")

-- Set the time (in milliseconds) to wait for more key presses after a mapped sequence
vim.opt.updatetime = 50

-- Highlight the column at character position 115
vim.opt.colorcolumn = "115"

-- Set the mapleader to a space
vim.g.mapleader = ' '

