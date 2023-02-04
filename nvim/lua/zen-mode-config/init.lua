require("zen-mode").setup {
  window = {
    backdrop = 0.95,
    width = 120,
    height = 0.8,
    options = { signcolumn = "no", number = true }
  },
  plugins = {
    options = { enabled = true, ruler = false, showcmd = false },
    gitsigns = { enabled = false },
    tmux = { enabled = false }
  }
}
