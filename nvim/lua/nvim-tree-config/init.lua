vim.g.nvim_tree_width = 25

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require 'nvim-tree'.setup {
 --  open_on_setup = true,
 --  open_on_setup_file = true,
 --  hijack_cursor = true,
 --  respect_buf_cwd = true,
 --  update_cwd = true,
 --  update_focused_file = {
 --    enable = true,
 --    update_root = true,
 -- },
 --  renderer = {
 --    indent_markers = {
 --      enable = true,
 --    },
 --  },
 --  view = {
 --    adaptive_size = true,
 --  }
 -- change folder arrow icons
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", -- arrow when folder is closed
          arrow_open = "", -- arrow when folder is open
        },
      },
    },
  },
}

-- Auto close nvim tree if all buffers was closed
vim.cmd [[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]
