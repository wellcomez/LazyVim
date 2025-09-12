return {

  { "voldikss/vim-floaterm" },
  {
    "akinsho/bufferline.nvim",
    config = function()
      local lsp = "coc"
      if vim.g.uselsp then
        lsp = "nvim_lsp"
      end
      local custom_filter = function(buf_number)
        local type = vim.bo[buf_number].filetype
        local a = { "dashboard", "Outline" }
        for i, v in ipairs(a) do
          if v == type then
            return false
          end
        end
        if type == "dashboard" then
          return false
        end
        return true
      end
      local colors = {
        white = "#FFFFFF",
        black = "#1e222a", --  nvim bg
        black2 = "#252931",
        grey_fg = "#565c64",
        light_grey = "#6f737b",
        red = "#d47d85",
        orange = "#FF5733",
        yellow = "#FFFF00",
        -- blue = "#13FFFF",
        blue = "#151515",
        green = "#A3BE8C",
        lightbg = "#2d3139",
        lightbg2 = "#262a32",
      }
      function right()
        local result = {}
        local error = vim.lsp.diagnostic.get_count(0, [[Error]])
        local warning = vim.lsp.diagnostic.get_count(0, [[Warning]])
        local info = vim.lsp.diagnostic.get_count(0, [[Information]])
        local hint = vim.lsp.diagnostic.get_count(0, [[Hint]])

        if error ~= 0 then
          table.insert(result, {
            text = "  " .. error,
            fg = "#EC5241",
          })
        end

        if warning ~= 0 then
          table.insert(result, {
            text = "  " .. warning,
            fg = "#EFB839",
          })
        end

        if hint ~= 0 then
          table.insert(result, {
            text = "  " .. hint,
            fg = "#A3BA5E",
          })
        end

        if info ~= 0 then
          table.insert(result, {
            text = "  " .. info,
            fg = "#7EA9A7",
          })
        end
        return result
      end
      local selected_color = colors.black
      local selected_bg = colors.orange
      local highlights = {
        fill = {
          fg = colors.grey_fg,
        },
        background = {},
        -- buffers
        numbers_selected = {
          fg = selected_color,
          bg = selected_bg,
          italic = true,
          -- gui = "bold,italic",
        },
        buffer_visible = {
          fg = colors.light_grey,
        },
        buffer_selected = {
          fg = selected_color,
          bg = selected_bg,
          italic = true,
          -- gui = "bold",
        },
        -- tabs
        tab = {
          fg = colors.light_grey,
        },
        tab_selected = {
          fg = selected_color,
          bg = selected_bg,
        },
        tab_close = {
          fg = colors.red,
        },
        indicator_selected = {
          fg = selected_bg,
          bg = selected_bg,
        },
        -- separators
        separator = {
          fg = selected_bg,
          -- bg = selected_bg,
        },
        separator_visible = {
          fg = selected_bg,
          -- bg = selected_bg,
        },
        separator_selected = {
          fg = selected_bg,
          bg = selected_bg,
        },
        -- modified
        modified = {
          fg = colors.red,
        },
        modified_visible = {
          fg = colors.red,
        },
        modified_selected = {
          fg = selected_color,
        },
        -- close buttons

        close_button = {
          fg = colors.light_grey,
        },
        close_button_visible = {
          fg = colors.light_grey,
        },
        close_button_selected = {
          fg = selected_color,
          bg = selected_bg,
        },
      }
      require("bufferline").setup({
        highlights = highlights,
        options = {
          view = "multiwindow",
          mode = "buffers", -- set to "tabs" to only show tabpages instead
          -- indicator_icon = "",
          indicator = {
            icon = "",
            style = "icon",
          },
          buffer_close_icon = "X",
          modified_icon = "●",
          close_icon = "",
          left_trunc_marker = "",
          right_trunc_marker = "",
          show_buffer_icons = true, -- disable filetype icons for buffers
          show_buffer_close_icons = true,
          -- show_buffer_default_icon = true, -- whether or not an unrecognised filetype should show a default icon
          show_close_icon = true,
          show_tab_indicators = true,
          numbers = "ordinal",
          -- numbers = function(opts)
          -- 	local fn = vim.fn
          -- 	local current = fn.winbufnr(0) == opts.id
          -- 	if current then
          -- 		-- return string.format(" %s%s", opts.ordinal, opts.raise(opts.id))
          -- 		return string.format(" %s", opts.ordinal)
          -- 	end
          -- 	return string.format("%s", opts.ordinal)
          -- end,
          custom_filter = custom_filter,
          -- tab_size = 10,
          -- diagnostics = "nvim_lsp",
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "center",
              padding = 1,
            },
            {
              filetype = "nerdtree",
              text = "File Explorer",
              text_align = "center",
              padding = 1,
            },
            {
              filetype = "Vista",
              text = "Outline Explorer",
              text_align = "center",
              padding = 1,
            },
            -- {
            -- 	filetype = "tagbar",
            -- 	text = "File Explorer",
            -- 	text_align = "center",
            -- 	padding = 1,
            -- },
            {
              filetype = "minimap",
              text = "Minimap",
              text_align = "center",
            },
            {
              filetype = "Outline",
              text = "Symbols",
              text_align = "center",
            },
            {
              filetype = "packer",
              text = "Plugins manager",
              text_align = "center",
            },
          },
          custom_areas = {
            -- right = right
          },
        },
      })
    end,
  },
}
