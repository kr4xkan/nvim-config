require("plugins")

local set = vim.opt
local let = vim.g

local os = vim.loop.os_uname().sysname

-- General options
set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4

set.wrap = false
set.scrolloff = 10
set.fileencoding = 'utf-8'
set.termguicolors = true
set.colorcolumn = {80}

set.number = true
set.cursorline = true
set.hidden = true


-- Keymaps
let.mapleader = " "
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map("n", "<leader><Tab>", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>f", ":Telescope find_files<CR>", opts)
map("n", "<leader>v", ":Neoformat<CR>", opts)
map("n", "L", ":BufferLineCycleNext<CR>", opts)
map("n", "H", ":BufferLineCyclePrev<CR>", opts)
map("n", "<leader>x", ":bdelete<CR>", opts)
map("n", "<leader>X", ":bdelete!<CR>", opts)

if os == "Darwin" then
    map("n", "Ï", ":m+<CR>", opts)
    map("n", "È", ":m--<CR>", opts)
    map("v", "Ï", ":m '>+1<CR>gv=gv", opts)
    map("v", "È", ":m '<-2<CR>gv=gv", opts)
else
    map("n", "<A-j>", ":m+<CR>", opts)
    map("n", "<A-k>", ":m--<CR>", opts)
    map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
    map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
end

map("n", "gd", ":Lspsaga lsp_finder<CR>", opts)
map("n", "gr", ":Lspsaga rename<CR>", opts)
map("n", "gp", ":Lspsaga preview_definition<CR>", opts)
map("n", "gh", ":Lspsaga hover_doc<CR>", opts)


-- Disable base plugins
let.loaded_matchparen        = 1
let.loaded_matchit           = 1
let.loaded_logiPat           = 1
let.loaded_rrhelper          = 1
let.loaded_tarPlugin         = 1
let.loaded_man               = 1
let.loaded_gzip              = 1
let.loaded_zipPlugin         = 1
let.loaded_2html_plugin      = 1
let.loaded_shada_plugin      = 1
let.loaded_spellfile_plugin  = 1
let.loaded_netrw             = 1
let.loaded_netrwPlugin       = 1
let.loaded_tutor_mode_plugin = 1
let.loaded_remote_plugins    = 1

