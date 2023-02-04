-- cursorline config
local cursor_line_group = vim.api.nvim_create_augroup('CursorLine', { clear = true });

vim.api.nvim_create_autocmd({ 'VimEnter', 'WinEnter', 'BufWinEnter' }, {
  callback = function ()
    vim.o.cursorline = true
  end,
  group = cursor_line_group,
})

vim.api.nvim_create_autocmd('WinLeave', {
  callback = function ()
    vim.o.cursorline = false
  end,
  group = cursor_line_group,
})
