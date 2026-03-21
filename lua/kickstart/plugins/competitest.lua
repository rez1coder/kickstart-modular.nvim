---@module 'lazy'
---@type LazySpec
return {
  'xeluxee/competitest.nvim',
  dependencies = 'MunifTanjim/nui.nvim',
  opts = {
    editor_ui = {
      show_nu = false,
    },
    runner_ui = {
      show_nu = false,
      mappings = {
        run_again = 'r',
        run_all_again = 'R',
      },
      viewer = {
        show_nu = false,
      },
    },
    popup_ui = {
      total_width = 0.9,
      total_height = 0.9,
      layout = {
        { 3, {
          { 1, 'tc' },
          { 1, 'si' },
        } },
        { 3, 'so' },
        { 3, {
          { 9, 'eo' },
          { 1, 'se' },
        } },
      },
    },
    compile_command = {
      cpp = { exec = 'g++', args = { '-std=c++17', '-O2', '$(FNAME)', '-o', '$(FNOEXT)', '-Wall' } },
    },
    run_command = {
      cpp = { exec = './$(FNOEXT)' },
    },
    template_file = {
      cpp = vim.fn.stdpath 'config' .. '/templates/template.cpp',
    },
    -- start_receiving_persistently_on_setup = true,
    -- receive_print_message = false,
    received_problems_prompt_path = false,
    testcases_directory = '.tests',
    testcases_use_single_file = true,
  },
  vim.keymap.set('n', '<leader>a', '<cmd>CompetiTest run<cr>', { desc = 'CompetiTest.nvim' }),
  vim.keymap.set('n', '<leader>A', '<cmd>CompetiTest receive persistently<cr>', { desc = 'CompetiTest.nvim Receive Persistently' }),
}
-- vim: ts=2 sts=2 sw=2 et
