-- colors for active , inactive buffer tabs
require("bufferline").setup({
    options = {
      separator_style = { "", "" },
      tab_size = 22,
      enforce_regular_tabs = true,
      view = "multiwindow",
      show_buffer_close_icons = true,
      diagnostics = "nvim_lsp",
      -- remove since we dont need this filter atm
      -- custom_filter = function(buf_number)
      --   if not not vim.api.nvim_buf_get_name(buf_number):find(vim.fn.getcwd(), 0, true) then
      --     return true
      --   end
      -- end
    },
  })
