require "nvchad.options"

-- add yours here!

local opt = vim.opt
-- local cmd = vim.cmd

opt.relativenumber = true          -- Enable relative line numbers
opt.tabstop = 4                    -- A tab character will be 4 spaces wide
opt.shiftwidth = 4                 -- Indentation width is 4 spaces
opt.expandtab = true               -- Convert tabs to spaces
opt.softtabstop = 4                -- When pressing tab, insert 4 spaces

-- Optionally, if you want to enable cursorline
-- opt.cursorlineopt = 'both'       -- Uncomment if you need to enable cursorline for both the current line and the column

