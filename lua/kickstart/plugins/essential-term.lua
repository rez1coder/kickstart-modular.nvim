---@module 'lazy'
---@type LazySpec
return {
  'wr9dg17/essential-term.nvim',
  lazy = false,
  dependencies = { 'MunifTanjim/nui.nvim' },
  opts = {
    sidebar_width = 12, -- width of the session-picker sidebar (horizontal mode)
  },
  keys = {
    { '<C-`>', '<cmd>EssentialTermToggle<cr>', mode = { 'n', 't' }, desc = 'Toggle terminal' },
    { '<C-\\>', '<cmd>EssentialTermToggle<cr>', mode = { 'n', 't' }, desc = 'Toggle terminal' },
    { '<C-t>', '<cmd>EssentialTermNew<cr>', mode = { 'n', 't' }, desc = 'New terminal session' },
    { '<C-x>', '<cmd>EssentialTermClose<cr>', mode = { 'n', 't' }, desc = 'Close terminal session' },
    { '<C-r>', '<cmd>EssentialTermRename<cr>', mode = { 'n', 't' }, desc = 'Rename terminal session' },
    { '<C-p>', '<cmd>EssentialTermPrev<cr>', mode = { 't' }, desc = 'Previous terminal' },
    { '<C-n>', '<cmd>EssentialTermNext<cr>', mode = { 't' }, desc = 'Next terminal' },
  },
}
-- vim: ts=2 sts=2 sw=2 et
