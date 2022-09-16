local Remap = require("dave.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local tnoremap = Remap.tnoremap
local nmap = Remap.nmap

nnoremap("<leader>ff", ":NeoTreeRevealToggle<CR>")
nnoremap("<C-n><C-n>", ":bn<CR>")
nnoremap("<C-b><C-b>", ":bp<CR>")

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

nnoremap("Y", "yg$")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
nnoremap("J", "mzJ`z")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

--
-- Save
nnoremap("??", ":w<CR>")
nnoremap("<C-s><C-s>", ":w<CR>")
inoremap("<C-s><C-s>", "<C-o>:w<CR>")
-- This is going to get me cancelled
inoremap("<C-c>", "<Esc>")
inoremap(";;", "<Esc>")
--quit no save
nnoremap("<leader>qq", ":q!<CR>")


-- Opens line below or above the current line
inoremap("<C-d>d", "<C-O>o")
inoremap("<C-u>u", "<C-O>O")

-- Hmmm (temp)
nnoremap("<leader><leader>k", ":e ~/Appdata/Local/nvim/after/plugin/keymap<CR>")
nnoremap("<leader><leader>n", ":e ~/Appdata/Local/nvim<CR>")

-- Easier Moving between splits
nnoremap("<C-J>", "<C-W><C-J>")
nnoremap("<C-K>", "<C-W><C-K>")
nnoremap("<C-L>", "<C-W><C-L>")
nnoremap("<C-H>", "<C-W><C-H>")

-- Run previous command
nnoremap("<leader><leader>c", ":<up>")

-- Change the working directory for everybody
nnoremap("<leader>cd", ":windo lcd")


-- Make esc leave terminal mode
nnoremap("<leader>tt", ":belowright split | terminal<CR>i")
tnoremap("<leader><Esc>", "<C-\\><C-n>")
tnoremap("<Esc><Esc>", "<C-\\><C-n>")
tnoremap("<A-h>", "<C-\\><C-n><C-w>h")
tnoremap("<A-j>", "<C-\\><C-n><C-w>j")
tnoremap("<A-k>", "<C-\\><C-n><C-w>k")
tnoremap("<A-l>", "<C-\\><C-n><C-w>l")
--
-- try and make sure to not mangle space items

-- greatest remap ever
xnoremap("<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
nnoremap("<leader>y", "\"*y")
vnoremap("<leader>y", "\"*y")
nnoremap("<leader>Y", "\"*yg$")


nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

vnoremap("<leader>d", "\"_d")

nnoremap("Q", "<nop>")
nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

nnoremap("<C-k>", "<cmd>cnext<CR>zz")
nnoremap("<C-j>", "<cmd>cprev<CR>zz")
nnoremap("<leader>k", "<cmd>lnext<CR>zz")
nnoremap("<leader>j", "<cmd>lprev<CR>zz")

nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
nnoremap("<leader>sc", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gcI<Left><Left><Left>")
