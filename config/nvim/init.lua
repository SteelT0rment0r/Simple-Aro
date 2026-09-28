-- ==========================================
-- Neovim + Pywal16
-- ==========================================

vim.opt.termguicolors = true

local wal_file = vim.fn.expand("~/.cache/wal/colors.json")

local file = io.open(wal_file, "r")

if file then
    local data = file:read("*a")
    file:close()

    local ok, wal = pcall(vim.json.decode, data)

    if ok and wal then
        local c = wal.colors

        -- Background / foreground
        vim.api.nvim_set_hl(0, "Normal", {
            fg = wal.foreground,
            bg = wal.background,
        })

        vim.api.nvim_set_hl(0, "NormalFloat", {
            fg = wal.foreground,
            bg = wal.background,
        })

        -- UI
        vim.api.nvim_set_hl(0, "CursorLine", {
            bg = c.color0,
        })

        vim.api.nvim_set_hl(0, "LineNr", {
            fg = c.color8,
        })

        vim.api.nvim_set_hl(0, "CursorLineNr", {
            fg = c.color3,
            bold = true,
        })

        vim.api.nvim_set_hl(0, "Visual", {
            bg = c.color4,
        })

        vim.api.nvim_set_hl(0, "Search", {
            fg = wal.background,
            bg = c.color3,
        })

        vim.api.nvim_set_hl(0, "IncSearch", {
            fg = wal.background,
            bg = c.color1,
        })

        vim.api.nvim_set_hl(0, "StatusLine", {
            fg = wal.foreground,
            bg = c.color0,
        })

        vim.api.nvim_set_hl(0, "StatusLineNC", {
            fg = c.color8,
            bg = c.color0,
        })

        vim.api.nvim_set_hl(0, "VertSplit", {
            fg = c.color8,
            bg = wal.background,
        })

        vim.api.nvim_set_hl(0, "Pmenu", {
            fg = wal.foreground,
            bg = c.color0,
        })

        vim.api.nvim_set_hl(0, "PmenuSel", {
            fg = wal.foreground,
            bg = c.color4,
        })

        -- Syntax
        vim.api.nvim_set_hl(0, "Comment", {
            fg = c.color8,
        })

        vim.api.nvim_set_hl(0, "Constant", {
            fg = c.color3,
        })

        vim.api.nvim_set_hl(0, "String", {
            fg = c.color2,
        })

        vim.api.nvim_set_hl(0, "Function", {
            fg = c.color4,
        })

        vim.api.nvim_set_hl(0, "Keyword", {
            fg = c.color1,
        })

        vim.api.nvim_set_hl(0, "Type", {
            fg = c.color6,
        })

        vim.api.nvim_set_hl(0, "Identifier", {
            fg = c.color5,
        })
    end
end

-- ==========================================
-- Basic settings
-- ==========================================

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

vim.opt.signcolumn = "yes"
vim.opt.showmode = false
vim.opt.termguicolors = true
