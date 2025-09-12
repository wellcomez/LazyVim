return {
  { "voldikss/vim-floaterm" },
  {
    "nvim-mini/mini.comment",
    config = function()
      require("mini.comment").setup({
        mappings = {
          -- Toggle comment (like `gcip` - comment inner paragraph) for both
          -- Normal and Visual modes
          comment = "cc",

          -- Toggle comment (like `gcap` - comment around paragraph) for Visual mode
          -- Toggle comment on current line
          comment_line = "cc",

          -- Toggle comment on visual selection
          comment_visual = "cc",

          -- Define 'comment' textobject (like `dgc` - delete whole comment block)
          -- Works also in Visual mode if mapping differs from `comment_visual`
          textobject = "cc",
        },
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },
}
