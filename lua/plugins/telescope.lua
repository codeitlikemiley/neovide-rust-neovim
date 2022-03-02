-- This is your opts table
require("telescope").setup {
    extensions = {
      ["ui-select"] = {
        require("telescope.themes").get_dropdown {
          -- even more opts
        }
      }
    }
  }
  -- To get fzf loaded and working with telescope, you need to call
require("telescope").load_extension("ui-select")