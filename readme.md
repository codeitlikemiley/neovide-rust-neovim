# Fullstack Rust Productivity tool Using Neovide

## Requirements

You will need to install some dependencies
- neovim
- packer
- Neovide
- lua, luajit
- python (optional , on mac its installed)
- ruby (optional, on mac its installed)
- rustc , cargo, rustup
- MacOS (recommended), Linux , Windows


## Setting up for your own Use
1. Im assuming you already have neovim Installed on your system. Make sure you Install **[NEOVIM](https://neovim.io)**

1. Rust Install it, if you dont now how click ->  [Rust with RustUp Install](https://www.rust-lang.org/tools/install)

1. Install [Packer](https://github.com/wbthomason/packer.nvim)

1. Download and Install [Neovide](https://github.com/neovide/neovide/releases)

1. Set Up your Executable Path ,and Font use [Nerd Fonts](https://www.nerdfonts.com/font-downloads)

edit `vim_g.lua`

```
vim.g.python3_host_prog = "/opt/homebrew/bin/python3"
vim.g.ruby_host_prog = "/usr/bin/ruby"
vim.g.python_host_prog = "/Users/uriah/.pyenv/shims/python"
vim.g.rustc_path = "/opt/homebrew/bin/rustc"
vim.opt.guifont = "Hack Nerd Font Mono:12"
```

1. Create .undodir folder in `$HOME/.undodir`

1. Enabling Meta Key

Meta Key can be used in any OS, im mac its CMD_KEY, windows is WINDOW_KEY and Linux is SUPER_KEY

On Neovide , it is set globally with this key.

```lua
vim.g.neovide_input_use_logo= true
```

1. Override Key Bindings

- The example below , is using OPTION + JK on mac, you can edit it and put ALT +  [jk], if you dont use it or its  not binded on your system.
- You can search for <D-ANY_KEY> to override your SUPER/META/CMD key bindings.

`./lua/keymaps/move_lines.lua`
```lua
-- This is MACOS Specific Keybinding OPT+[jk]
-- Create your own in windows :) by replacing this
nnoremap("∆",[[ :m .+1<CR>==]])
nnoremap ("˚",[[ :m .-2<CR>==]])
inoremap("∆",[[<Esc>:m .+1<CR>==gi]])
inoremap("˚", [[<Esc>:m .-2<CR>==gi]])
vnoremap("∆",[[ :m '>+1<CR>gv=gv]])
vnoremap("˚", [[:m '<-2<CR>gv=gv]])
```

1. Install Neovim Plugin with Packer run `:PackerInstall` or `:PackerSync`

1. For Rust Formatting , Intellisense ,Test to work

you need to install rust `fmt`, `clippy`, `rust-analyzer` we assume you already have set up rustc, rustup and cargo

- `rustup component add rustfmt`
-  `rustup component add clippy`
- for [rust analyzer click here](https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary)

1. For Debugger to Work you need to [Download CODELLDB](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb)

1. Update Path for CodeLLDB

`./lua/plugins/rusty-tools.lua`

```lua
-- Update this path
local extension_path = vim.env.HOME .. '/.vscode/extensions/vadimcn.vscode-lldb-1.6.10/'
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb.dylib' -- this is a  *.so file on windows/linux
local nnoremap = require("utils/nnoremap")
local custom_attach = require("keymaps/rust_tools")
```

1. To make Rust Play works which is binded on CMD+C (ONLY FOR LINUX AND MAC USERS)

-  you need to update `vim_g.lua`

```lua
let g:rust_clip_command = 'xclip -selection clipboard'
```

## Productivity First Keybindings

###  legends
- [r] - enabled only on Rust Projects
- [g] - generals purpose key bindings
#### Rust Run/Test [r]
- F1 = Rust Run
- F2 = Rust Run Test Under Cursor (only for Cargo projects, defaults to running all test for single file .rs)
- F3 = Rust Runnables
- F4 = Undo Tree Toggle (Not Rust Related) [g]
- F5 = Rust Debuggables (Rust Debugger)
- F6 = Start Stand Alone Rust Server for Single File
- F7 = Reload Rust Workspace
- F8 = Toggle DAP REPL
- F9 = Run ONLY IGNORED Test

- CMD + C = Copy Rust File Content to Rust Playground

#### Debugger [r]
- CMD + ` = toggle Debugger UI
- CMD + F1 = Debug Continue
- CMD + F2 = Debug Step Over
- CMD + F3 = Debug Step Into
- CMD + F4 = Debug Step Out
- CMD + F5 = Close DAP
- CMD + F8 = Close DAP REPL
- CMD + X = Toggle Breakpoint

#### Pane Navigation [g]
- CMD + [hjkl] - Quickly Navigate panes on normal

#### Move Up Down
- OPT + [jk] - Move Line Up and Down in Insert mode [g]
- CMD + [ = Move Item Down (useful for functions/variables/class) [r]
- CMS +] = Move Item Up (can be class, fn, variables) [r]

#### Tabbing [g]
- CMD + Q - Quit
- CMD + W - Close Tab
- CMD + [1-9] - Switch Buffer
- CMD + B = Toggle Sidebar
- CMD + N = Create New Tab
- <LEADER> + [0-9] - Go to Tab 1-9

#### Common Save , Undo Redo [g]
- CMD + S = Save and Autoformat
- CMD + V = Paste
- CMD + Z = Undo
- CMD + Y = Redo

#### Intellisense, Diagnostic, LSP [g]
- CMD + D = Hover Definition , Press Twice to go inside and navigate it
- CMD + A = Trigger Code Actions
- CMD + , = Previous Diagnotic
- CMD + . = Next Diagnotic
- CMD + I = Check Implementations
- CMD + R = Rename/Refactor
- CMD + T = View Treesitter

#### Quick File Navigation [g]

- CMD + O = Workspace Symbols
- CMD + E = View Recent Files
- CMD + P = Search Files
- CMD + M = View all your Vim Marks
- CMD + F = Find Text on Steroids

## Known Issue on Neovide

- [Check this Solution](https://github.com/neovide/neovide/issues/1230)

