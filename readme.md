# Fullstack Rust Productivity tool Using Neovide

## Requirements

You will need to install some dependencies
- neovim
- packer
- Neovide
- lua, luajit
- rustc , cargo, rustup
- MacOS (recommended), Linux , Windows

## Paths you need to change for your own usage
1. vim_g.lua
 get path type: `which CMD`
```
-- change to your cmd paths
vim.g.python3_host_prog = "/opt/homebrew/bin/python3"
vim.g.ruby_host_prog = "/usr/bin/ruby"
vim.g.python_host_prog = "/Users/uriah/.pyenv/shims/python"
vim.g.rustc_path = "/opt/homebrew/bin/rustc"
-- add here your custom fonts
vim.opt.guifont = "Hack Nerd Font Mono:12"
```

1. Create .undodir folder in `$HOME/.undodir`

1. Override Some Keys You want:

Meta Key can be used in any OS, im mac its CMD key, windows and Linux is Super

- I Bet in linux your super key like me is already binded to your window manager
- Same Goes for Windows , not unless you configure it using powertoys and autohotkey
- you can SWAP <D-ANY_KEY> to <M-ANY_KEY> usually its ALT in both linux and Windows
- example below is using Option Key on MACOS

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

`./lua/keymaps/system_clipboard.lua`
```lua
if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1 or vim.fn.has('gui_running') == 1 then
    vim.cmd [[
    nnoremap <D-v> "+p
    inoremap <D-v> <c-r>+
    cnoremap <D-v> <c-r>+
]]
end
```

> You can Search `<D-` to show all CMD keys that are binded

1. Install Neovim Plugin with Packer run `PackerInstall`

## Well thought off Keybindings on MacOS and Neovide
- F1 = run rust program
- F2 = run test under cursor on cargo project, and all test on single rs file
- F3 = choose test to run
- CMD+F12 = If you want to use single rs file , to get all features press this
- CMD [hjkl] - Quickly Navigate panes on normal
- OPT [jk] - Move Line Up and Down in Insert mode
- CMD [Q] - quit / exit pane
- CMD[1-0] - Switch Buffer tabs
- CMD+O = Get Document Symbol
- CMD+D = Hover Definition , Press Twice to go inside and navigate it
- CMD+A = Trigger Code Actions
- CMD+S = Save and Autoformat
- CMD+R = Rename
- CMD+F = Find Files
- CMD+T = Search Workspace Symbols
- CMD + V = Paste
- CMD + Z = Undo
- CMD + Y = Redo
- CMD + ` = Toggle File Tree /SidebarA
- CMD + , = Previous Diagnotic
- CMD + . = Next Diagnotic
- CMD + M = View all your Vim Marks
- CMD + P = View Jump List
- CMD + I = Check Implementations
- CMD +  E = Check References
- CMD + [ = Move Item Down (useful for functions/variables/class)
- CMS +] = Move Item Up

## Known Issue on Neovide

- [Check this Solution](https://github.com/neovide/neovide/issues/1230)
