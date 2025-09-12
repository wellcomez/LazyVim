return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "Mofiqul/dracula.nvim" },
  -- Configure telescope to load gruvbox
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}

