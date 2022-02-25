local vi_mode_provider = require("feline.providers.vi_mode")
local git_provider = require("feline.providers.git")
local lsp_provider = require("feline.providers.lsp")

local colors = {
  background = "#575268",
  current_line = "#DDB6F2",
  selection = "#161320",
  foreground = "#D9E0EE",
  comment = "#6272a4",
  cyan = "#96CDFB",
  green = "#99C794",
  orange = "#F99157",
  pink = "#F5E0DC",
  purple = "#C594C5",
  red = "#EC5f67",
  yellow = "#FAC863",
}

local components = {
  inactive = {},
  active = {
    -- left
    -- vi mode
    {
      {
        provider = function()
          return " " .. (vi_mode_provider.get_vim_mode() or "term") .. " "
        end,
        left_sep = {
          str = "",
          hl = function()
            return {
              name = vi_mode_provider.get_mode_highlight_name(),
              fg = colors.selection,
            }
          end,
        },
        right_sep = {
          str = "",
          hl = function()
            return {
              name = vi_mode_provider.get_mode_highlight_name(),
              fg = colors.selection,
            }
          end,
        },
        hl = function()
          return {
            fg = vi_mode_provider.get_mode_color(),
            bg = colors.selection,
            style = "bold",
          }
        end,
      },

      -- folder name
      {
        left_sep = {
          str = "",
          hl = {
            fg = colors.selection,
          },
        },
        right_sep = {
          str = "",
          hl = {
            fg = colors.selection,
          },
        },
        hl = {
          bg = colors.selection,
          fg = colors.yellow,
          style = "bold",
        },
        provider = function()
          local name = vim.fn.getcwd()
          return string.format(" %s %s ", "", vim.fn.fnamemodify(name, ":t"))
        end,
      },

      -- file name
      {
        left_sep = {
          str = "",
          hl = {
            fg = colors.selection,
          },
        },
        right_sep = {
          str = "",
          hl = {
            fg = colors.selection,
          },
        },
        hl = {
          bg = colors.selection,
          fg = colors.red,
          style = "bold",
        },
        enabled = function()
          local name = vim.api.nvim_buf_get_name(0)
          return name and name ~= ""
        end,
        provider = function()
          local name = vim.api.nvim_buf_get_name(0)
          local ext = vim.fn.fnamemodify(name, ":e")
          local icon_str = require("nvim-web-devicons").get_icon_color(
            name,
            ext,
            { default = true }
          )
          return string.format(
            " %s %s ",
            icon_str,
            vim.fn.fnamemodify(name, ":t")
          )
        end,
      },
    },

    -- middle
    {
      -- git branch
      {
        left_sep = {
          str = "",
          hl = {
            fg = colors.selection,
          },
        },
        right_sep = {
          str = "",
          hl = {
            fg = colors.selection,
          },
        },
        hl = {
          bg = colors.selection,
          fg = colors.pink,
          style = "bold",
        },
        enabled = git_provider.git_info_exists,
        provider = function()
          local branch, icon = git_provider.git_branch()
          return string.format(" %s%s ", icon, branch)
        end,
      },

      -- git changed
      {
        left_sep = {
          str = "",
          hl = {
            fg = colors.selection,
          },
        },
        hl = {
          bg = colors.selection,
          fg = colors.cyan,
          style = "bold",
        },
        enabled = git_provider.git_info_exists,
        provider = function()
          local changed, icon = git_provider.git_diff_changed()
          if changed == "" then
            changed = 0
          end
          return string.format("%s%s", icon, changed)
        end,
      },

      -- git added
      {
        hl = {
          bg = colors.selection,
          fg = colors.green,
          style = "bold",
        },
        enabled = git_provider.git_info_exists,
        provider = function()
          local added, icon = git_provider.git_diff_added()
          if added == "" then
            added = 0
          end
          return string.format("%s%s", icon, added)
        end,
      },

      -- git removed
      {
        right_sep = {
          str = "",
          hl = {
            fg = colors.selection,
          },
        },
        hl = {
          bg = colors.selection,
          fg = colors.orange,
          style = "bold",
        },
        enabled = git_provider.git_info_exists,
        provider = function()
          local removed, icon = git_provider.git_diff_removed()
          if removed == "" then
            removed = 0
          end
          return string.format("%s%s ", icon, removed)
        end,
      },
    },

    -- right
    {

      -- lsp errors
      {
        left_sep = {
          str = "",
          hl = {
            fg = colors.selection,
          },
        },
        hl = {
          bg = colors.selection,
          fg = colors.red,
          style = "bold",
        },
        enabled = lsp_provider.is_lsp_attached,
        provider = function()
          local errors, icon = lsp_provider.diagnostic_errors()
          if errors == "" then
            errors = "0"
          end
          return string.format("%s%s", icon, errors)
        end,
      },

      -- lsp warnings
      {
        hl = {
          bg = colors.selection,
          fg = colors.orange,
          style = "bold",
        },
        enabled = lsp_provider.is_lsp_attached,
        provider = function()
          local warnings, icon = lsp_provider.diagnostic_warnings()
          if warnings == "" then
            warnings = "0"
          end
          return string.format("%s%s", icon, warnings)
        end,
      },

      -- lsp info
      {
        hl = {
          bg = colors.selection,
          fg = colors.foreground,
          style = "bold",
        },
        enabled = lsp_provider.is_lsp_attached,
        provider = function()
          local info, icon = lsp_provider.diagnostic_info()
          if info == "" then
            info = "0"
          end
          return string.format("%s%s", icon, info)
        end,
      },

      -- lsp hints
      {
        right_sep = {
          str = "",
          hl = {
            fg = colors.selection,
          },
        },
        hl = {
          bg = colors.selection,
          fg = colors.cyan,
          style = "bold",
        },
        enabled = lsp_provider.is_lsp_attached,
        provider = function()
          local hints, icon = lsp_provider.diagnostic_hints()
          if hints == "" then
            hints = "0"
          end
          return string.format("%s%s ", icon, hints)
        end,
      },

      -- language server names
      {
        left_sep = {
          str = "",
          hl = {
            fg = colors.selection,
          },
        },
        right_sep = {
          str = "",
          hl = {
            fg = colors.selection,
          },
        },
        hl = {
          bg = colors.selection,
          fg = colors.foreground,
          style = "bold",
        },
        enabled = lsp_provider.is_lsp_attached,
        provider = function()
          local names, icon = lsp_provider.lsp_client_names()
          return string.format(" %s%s ", icon, names)
        end,
      },
    },
  },
}

local disabled = { "NvimTree", "Outline" }

R("feline").setup({
  components = components,
  theme = {
    fg = colors.foreground,
    cyan = colors.cyan,
    green = colors.green,
    orange = colors.orange,
    red = colors.red,
    magenta = colors.pink,
    violet = colors.violet,
    yellow = colors.yellow,
  },
  force_inactive = { filetypes = disabled },
})

vim.cmd(string.format("hi StatusLineNC guibg=%s", colors.background))
vim.cmd(
  string.format(
    "hi NvimTreeStatusLine guibg=%s guifg=%s",
    colors.background,
    colors.background
  )
)
vim.cmd(string.format("hi NvimTreeStatusLineNC guibg=%s", colors.background))
