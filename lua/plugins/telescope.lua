return {
  {
    "nvim-telescope/telescope-project.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- disable the keymap to grep files
      -- change a keymap
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      -- add a keymap to browse plugin files
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
      -- New keymaps with configuration
      {
        "<leader>ce",
        function()
          require("telescope.builtin").lsp_document_diagnostics({ layout_strategy = "vertical" })
        end,
        desc = "Document Diagnostics",
      },
      {
        "<space>fq",
        function()
          require("telescope.builtin").quickfix({ layout_strategy = "vertical", sorting_strategy = "ascending" })
        end,
        desc = "Quickfix",
      },
      { "<space>fh", "<cmd>Telescope oldfiles<cr>", desc = "Old Files" },
      { "<space>gs", "<cmd>Telescope git_status<cr>", desc = "Git Status" },
      { "<space>hh", "<cmd>Telescope oldfiles<cr>", desc = "Old Files" },
      { "<space>rs", "<cmd>Telescope treesitter<cr>", desc = "Treesitter" },
      { "<space>cr", "<cmd>Telescope lsp_range_code_actions<cr>", desc = "Range Code Actions" },
      { "<space>fw", "<cmd>Telescope grep_string<cr>", desc = "grep" },
      { "gr", "<cmd>Telescope lsp_references<cr>", desc = "References" },
      {
        "<space>fw",
        function()
          require("telescope.builtin").grep_string({
            short_path = true,
            word_match = "-w",
            only_sort_text = true,
            layout_strategy = "vertical",
            sorter = require("telescope.sorters").get_fzy_sorter(),
          })
        end,
        desc = "Grep String",
      },
      {
        "<C-P>",
        function()
          require("telescope.builtin").find_files({
            layout_strategy = "horizontal",
            layout_config = {
              width = 0.95,
              results_width = 0.9,
            },
          })
        end,
        desc = "Find Files",
      },
      {
        "<C-S>",
        function()
          require("telescope.builtin").live_grep({
            layout_strategy = "vertical",
          })
        end,
        desc = "Live Grep",
      },
      {
        "<Leader>fa",
        function()
          require("telescope.builtin").live_grep({
            layout_strategy = "vertical",
          })
        end,
        desc = "Live Grep",
      },
      {
        "<Leader>ws",
        function()
          require("telescope.builtin").lsp_dynamic_workspace_symbols({
            short_path = true,
            layout_strategy = "vertical",
          })
        end,
        desc = "Workspace Symbols",
      },
      {
        "<Leader>wt",
        function()
          require("telescope.builtin").treesitter()
        end,
        desc = "Treesitter",
      },
      {
        "<Leader>bb",
        function()
          require("telescope.builtin").buffers()
        end,
        desc = "Buffers",
      },
      {
        "<Leader>ss",
        function()
          require("telescope.builtin").lsp_dynamic_workspace_symbols({
            short_path = true,
            layout_strategy = "vertical",
          })
        end,
        desc = "Workspace Symbols",
      },
    },
  },
}
