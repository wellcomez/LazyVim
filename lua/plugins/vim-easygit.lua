return {
  {
    "wellcomez/vim-easygit",
    event = "BufEnter", -- 在进入缓冲区时加载
    config = function()
      -- 启用 vim-easygit 的命令（默认是禁用的）
      vim.g.easygit_enable_command = 1

      -- 可选：配置快捷键
      -- 例如设置 leader+g 作为前缀

      -- 自定义快捷键映射
      --      vim.keymap.set("n", "<leader>gs", ":Gstatus<CR>", { desc = "Git status" })
      --     vim.keymap.set("n", "<leader>ga", ":Gadd<CR>", { desc = "Git add" })
      --    vim.keymap.set("n", "<leader>gc", ":Gcommit<CR>", { desc = "Git commit" })
      --   vim.keymap.set("n", "<leader>gp", ":Gpush<CR>", { desc = "Git push" })
      --   vim.keymap.set("n", "<leader>gl", ":Gpull<CR>", { desc = "Git pull" })
      -- vim.keymap.set("n", "<leader>gb", ":Gblame<CR>", { desc = "Git blame" })
    end,
  },
}
