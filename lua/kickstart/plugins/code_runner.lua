---@module 'lazy'
---@type LazySpec
return {
  {
    'CRAG666/code_runner.nvim',
    opts = {
      mode = 'term', -- float, tab, better_term
      focus = true,
      startinsert = true,
      term = {
        position = 'bot',
        size = math.floor(vim.o.lines * 0.7), -- ~70% of editor height
      },
      filetype = {
        cpp = {
          'cd $dir &&',
          'g++ -std=c++17 $fileName -O2 -Wall -o $fileNameWithoutExt &&',
          '$dir/$fileNameWithoutExt',
        },
      },
    },
    vim.keymap.set('n', '<leader>r', '<cmd>update<bar>RunCode<cr>', { desc = 'Save file and run code' }),
  },
}
-- vim: ts=2 sts=2 sw=2 et
