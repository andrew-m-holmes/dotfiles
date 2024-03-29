-- color support
vim.o.termguicolors = true

-- longer time to press
vim.o.timeoutlen = 1000

-- formatting
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- bindings

-- line numbering
vim.wo.relativenumber = true
vim.opt.number = true

-- file changes history saves after quit
vim.opt.undofile = true

-- after search escape clears search
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- system clip linked w/ vim clip
vim.opt.clipboard = "unnamedplus"

-- list buffers & directories
vim.keymap.set("n", "<leader>bl", "<cmd>buffers<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>Explore<CR>")

-- tabbing
vim.keymap.set("i", "<S-Tab>", "<C-d>")
vim.keymap.set("n", "<Tab>", ">>")
vim.keymap.set("n", "<S-Tab>", "<<")
vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

-- quit window
vim.keymap.set("n", "<leader>qw", "<cmd>bd<CR>")
vim.keymap.set("n", "<leader>qq", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>qa", "<cmd>qa<CR>")
vim.keymap.set("n", "<leader>q!", "<cmd>qa!<CR>")

-- save
vim.keymap.set("n", "<leader>ww", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>wq", "<cmd>wq<CR>")
vim.keymap.set("n", "<leader>w!", "<cmd>w!<CR>")

-- current buffer nav
vim.keymap.set("n", "<C-b>", "<C-b>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "}", "}zz")
vim.keymap.set("n", "{", "{zz")

-- pane nav
vim.keymap.set("n", "gt", "<cmd>bnext<CR>")
vim.keymap.set("n", "gT", "<cmd>bprevious<CR>")

-- enforce the learning curve!
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- diagnostics
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>qf", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uick[F]ix list" })
