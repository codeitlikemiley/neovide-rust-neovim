-- filetype plugin indent on
vim.opt.formatoptions:remove([[cro]])
vim.opt.wrap = false
vim.opt.modeline = true
vim.opt.linespace = 0
vim.opt.relativenumber = true

vim.api.nvim_command([[:set nojoinspaces]])
vim.opt.mouse = "a"
vim.api.nvim_command([[:set list]])
vim.opt.hidden = true
vim.opt.cmdheight = 2
vim.opt.timeoutlen = 500
vim.opt.updatetime = 100
vim.opt.colorcolumn = "80"
vim.api.nvim_command([[:set display+=lastline]])
vim.opt.startofline = false
vim.opt.errorbells = false
vim.api.nvim_command([[:set backspace=indent,eol,start]])
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.autoread = true
vim.opt.laststatus = 2
vim.api.nvim_command([[:set fileformats=unix,dos,mac]])
vim.api.nvim_command([[:set gdefault]])
vim.opt.magic = true
vim.api.nvim_command([[:set wildmode=longest,list,full]])
vim.opt.wildmenu = true
vim.opt.history = 1000
vim.opt.undolevels = 1000
vim.opt.autowrite = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.spell = false

vim.opt.ruler = true
vim.opt.list = true
vim.opt.iskeyword:append("-")
vim.opt.conceallevel = 0
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.background = "dark"
vim.opt.showtabline = 4

vim.opt.clipboard = "unnamedplus"
vim.opt.autochdir = true
vim.opt.termguicolors = true
vim.opt.textwidth = 80

vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.shortmess:append("c")

vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.syntax = "enable"
vim.opt.compatible = false

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.api.nvim_command([[set fillchars+=stl:\ ,stlnc:\]])
vim.api.nvim_command([[hi VertSplit cterm=none ctermfg=none ctermbg=none]])
vim.opt.signcolumn = "yes"

vim.opt.undodir = os.getenv("HOME") .. "/.undodir"
vim.opt.undofile = true
vim.opt.showmatch = true
vim.api.nvim_command([[:highlight Search cterm=underline]])

if vim.fn.exists('neovide') == 1 or vim.fn.has('gui_running') == 1 then
    vim.api.nvim_command([[:highlight Normal guibg=NONE ctermbg=NONE]])
end
