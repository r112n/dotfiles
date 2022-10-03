local cmd = vim.cmd             -- execute Vim commands
local opt = vim.opt             -- global/buffer/windows-scoped options


-------------------------------------------------------------------------------
-- Main
-------------------------------------------------------------------------------

opt.colorcolumn = '80'
opt.cursorline = true
opt.spelllang = {'en_us', 'ru'}
opt.number = true
opt.splitright = true
opt.splitbelow = true

-------------------------------------------------------------------------------
-- Color scheme
-------------------------------------------------------------------------------

opt.termguicolors = true  -- 24bit RGB colors
cmd 'colorscheme molokai'

-------------------------------------------------------------------------------
-- Tabs and indention
-------------------------------------------------------------------------------

cmd 'syntax enable'

opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines

-------------------------------------------------------------------------------
-- Cool things
-------------------------------------------------------------------------------

-- Remember previous place
cmd [[
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]


-- LSP settings
require("nvim-lsp-installer").setup {}
local lspconfig = require("lspconfig")
lspconfig.sumneko_lua.setup {}

