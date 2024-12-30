-- leader
vim.g.mapleader = " "

-- buffer.all
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
-- buffer.bufferlines
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<c-x>', ':BufferLineCloseOthers<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')



-- insert
vim.keymap.set('i', 'jj', '<Esc>')

-- split
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '\\', ':split<CR>')

-- neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree left toggle reveal<CR>')

vim.opt.fillchars = {
vert = "│",
fold = "⠀",
eob = " ", -- suppress ~ at EndOfBuffer
-- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
msgsep = "‾",
foldopen = "▾",
foldsep = "│",
foldclose = "▸"
}
