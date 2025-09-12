-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

-- LSP navigation mappings
map(
  "n",
  "gi",
  "<cmd>lua vim.lsp.buf.implementation()<CR>",
  { desc = "Goto Implementation", noremap = true, silent = true }
)
map("n", "rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "Rename", noremap = true, silent = true })
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Goto Definition", noremap = true, silent = true })
map(
  "n",
  "<2-LeftMouse>",
  "<cmd>lua vim.lsp.buf.definition()<CR>",
  { desc = "Goto Definition", noremap = true, silent = true }
)
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "Goto Declaration", noremap = true, silent = true })
map("n", "[e", "<cmd>lua vim.diagnostic.goto_next()<CR>", { desc = "Next Diagnostic", noremap = true, silent = true })
map(
  "n",
  "]e",
  "<cmd>lua vim.diagnostic.goto_prev()<CR>",
  { desc = "Previous Diagnostic", noremap = true, silent = true }
)

-- Leader key mappings
map(
  "n",
  "<leader>ca",
  "<cmd>lua vim.lsp.buf.code_action()<CR>",
  { desc = "Code Action", noremap = true, silent = true }
)
map(
  "n",
  "<leader>qf",
  "<cmd>lua vim.lsp.buf.code_action()<CR>",
  { desc = "Quickfix Code Action", noremap = true, silent = true }
)
map("n", "<leader>cew", "<cmd>DiagnosticsAll<CR>", { desc = "Show All Diagnostics", noremap = true, silent = true })
map(
  "n",
  "<leader>ss",
  "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>",
  { desc = "Workspace Symbols", noremap = true, silent = true }
)
map(
  "n",
  "<leader>kk",
  "<cmd>lua vim.lsp.buf.signature_help()<CR>",
  { desc = "Signature Help", noremap = true, silent = true }
)
map(
  "n",
  "<leader>o",
  "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>",
  { desc = "Document Symbols", noremap = true, silent = true }
)
map("n", "<leader>cf", "<cmd>lua vim.lsp.buf.format()<CR>", { desc = "Format Code", noremap = true, silent = true })
map(
  "v",
  "<leader>cf",
  ":<c-u>lua vim.lsp.buf.format()<CR>",
  { desc = "Format Selection", noremap = true, silent = true }
)

-- Find and search mappings
map("n", "<leader>fr", "<cmd>Farf<CR>", { desc = "Find and Replace (Farf)", noremap = true, silent = true })
map("v", "<leader>fr", "<cmd>Farf<CR>", { desc = "Find and Replace (Farf)", noremap = true, silent = true })
map("n", "<leader>fl", "<cmd>BLines<CR>", { desc = "Search in Lines", noremap = true, silent = true })
map("n", "<leader>ft", "<cmd>BTags<CR>", { desc = "Search in Tags", noremap = true, silent = true })

-- Buffer and file operations
map("n", "<leader>qq", "<cmd>Bw<CR>", { desc = "Quit Buffer", noremap = true, silent = true })
map("n", "<leader>gf", "<cmd>GFiles<CR>", { desc = "Git Files", noremap = true, silent = true })
map("n", "<leader>bd", "<cmd>Bw<CR>", { desc = "Delete Buffer", noremap = true, silent = true })
map("n", "<leader>xf", "<cmd>NERDTreeFind<CR>", { desc = "Find in NERDTree", noremap = true, silent = true })

-- Symbols outline
map("v", "<leader>i", "<cmd>SymbolsOutline<CR>", { desc = "Symbols Outline", noremap = true, silent = true })

-- Sourcegraph search
-- map("n", "ss", "<cmd>lua require('sg.extensions.telescope').fuzzy_search_results()<CR>", { desc = "Sourcegraph Search", noremap = true, silent = true })

-- Toggle float window (mapped to Ctrl-k in all modes)
map(
  "n",
  "<C-k>",
  "<cmd>lua vim.lsp.buf.toggle_float_win()<CR>",
  { desc = "Toggle Float Window", noremap = true, silent = true }
)
map(
  "v",
  "<C-k>",
  "<cmd>lua vim.lsp.buf.toggle_float_win()<CR>",
  { desc = "Toggle Float Window", noremap = true, silent = true }
)
map(
  "i",
  "<C-k>",
  "<cmd>lua vim.lsp.buf.toggle_float_win()<CR>",
  { desc = "Toggle Float Window", noremap = true, silent = true }
)

-- Telescope keymaps
map(
  "n",
  "<leader>ce",
  "<cmd>Telescope lsp_document_diagnostics<cr>",
  { desc = "Document Diagnostics", noremap = true, silent = true }
)
map("n", "<space>fq", "<cmd>Telescope quickfix<cr>", { desc = "Quickfix", noremap = true, silent = true })
map("n", "<space>fh", "<cmd>Telescope oldfiles<cr>", { desc = "Old Files", noremap = true, silent = true })
map("n", "<space>gs", "<cmd>Telescope git_status<cr>", { desc = "Git Status", noremap = true, silent = true })
map("n", "<space>hh", "<cmd>Telescope oldfiles<cr>", { desc = "Old Files", noremap = true, silent = true })
map("n", "<space>fw", "<cmd>Telescope grep_string<cr>", { desc = "Grep Word", noremap = true, silent = true })
map("n", "<space>rs", "<cmd>Telescope treesitter<cr>", { desc = "Treesitter", noremap = true, silent = true })
map(
  "n",
  "<space>cr",
  "<cmd>Telescope lsp_range_code_actions<cr>",
  { desc = "Range Code Actions", noremap = true, silent = true }
)
map("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "References", noremap = true, silent = true })

-- Additional telescope keymaps
map("n", "<C-P>", "<cmd>Telescope find_files<cr>", { desc = "Find Files", noremap = true, silent = true })
map("n", "<C-S>", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep", noremap = true, silent = true })
map("n", "<Leader>fa", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep", noremap = true, silent = true })
map(
  "n",
  "<Leader>ws",
  "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
  { desc = "Workspace Symbols", noremap = true, silent = true }
)
map("n", "<Leader>wt", "<cmd>Telescope treesitter<cr>", { desc = "Treesitter", noremap = true, silent = true })
map("n", "<Leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Buffers", noremap = true, silent = true })
map(
  "n",
  "<Leader>ss",
  "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
  { desc = "Workspace Symbols", noremap = true, silent = true }
)

-- Floaterm keymap
map("n", "<space>tb", "<cmd>FloatermNew --wintype=split --height=0.3 --name=floatertb zsh<cr>", { desc = "Floaterm Terminal", noremap = true, silent = true })
