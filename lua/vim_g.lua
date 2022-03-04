-- run = :checkhealth
vim.g.loaded_python_provider = false
vim.g.python3_host_prog = "/opt/homebrew/bin/python3"
vim.g.ruby_host_prog = "/usr/bin/ruby"
vim.g.loaded_perl_provider = false
vim.g.python_host_prog = "/Users/uriah/.pyenv/shims/python"

vim.g.session_autosave = "yes"
vim.g.session_autoload = "yes"
vim.g.session_default_to_last = true
-- Rust Globals
vim.g.rust_clip_command = "pbcopy"
vim.g.rustfmt_autosave = true
vim.g.gruvbox_material_sign_column_background = "none"


-- GUI config
vim.g.neovide_transparency = 0.96
vim.g.neovide_remember_window_size = true
vim.g.neovide_cursor_vfx_mode = "railgun"
vim.opt.guifont = "Hack Nerd Font Mono:12"
-- allow us to use the cmd key in neovide
vim.g.neovide_input_use_logo= true
vim.g.popui_border_style = "double"