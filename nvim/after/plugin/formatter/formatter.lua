-- Utilities for creating configurations
-- local util = require 'formatter.util'

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
-- require("formatter").setup {
--   logging = true,
--   log_level = vim.log.levels.WARN,
--   filetype = {
--     lua = {
--       require("formatter.filetypes.lua").stylua,
--       function()
--         return {
--           exe = "stylua",
--           args = {
--             "--search-parent-directories",
--             "--stdin-filepath",
--             util.escape_path(util.get_current_buffer_file_path()),
--             "--",
--             "-",
--           },
--           stdin = true,
--         }
--       end,
--     },
--
--     javascript = {
--       require("formatter.filetypes.javascript").prettier,
--       require("formatter.filetypes.javascript").eslint,
--     },
--
--     typescript = {
--       require("formatter.filetypes.typescript").prettier,
--       require("formatter.filetypes.typescript").eslint,
--     },
--
--     rust = {
--       require("formatter.filetypes.rust").rustfmt,
--     },
--
--     ["*"] = {
--       require("formatter.filetypes.any").remove_trailing_whitespace,
--     },
--   },
-- }
