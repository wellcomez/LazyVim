return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "Mofiqul/dracula.nvim" },
  { "sainnhe/edge" },
  -- Configure telescope to load gruvbox
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "edge",
    },
  },
}

