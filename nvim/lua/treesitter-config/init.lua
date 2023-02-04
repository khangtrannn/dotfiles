vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    underline = true,
    virtual_text = {
      spacing = 5,
      severity_limit = 'Warning',
    },
    update_in_insert = false, -- Keep track on this change, expected that diagnostic only take place in normal mode
  }
)

require 'nvim-treesitter.configs'.setup {
  ensure_installed = { 'html', 'javascript', 'typescript', 'lua', 'java', 'scss', 'css', 'vim' },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true
  },
  rainbow = {
    enable = true,
    disable = { "html" }, -- list of languages you want to disable the plugin for
    extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {
      "#ff79c6",
      "#a89984",
      "#b16286",
      "#d79921",
      "#689d6a",
      "#ff79c6",
      "#458588",
    },
    termcolors = {
      "Magenta",
      "Green",
      "Yellow",
      "Blue",
      "Magenta",
      "Cyan",
      "White",
    },
  },
  autopairs = {
    enable = true
  }
}
