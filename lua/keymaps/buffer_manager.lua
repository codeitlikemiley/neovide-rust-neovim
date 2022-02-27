local nnoremap = require("utils/nnoremap")

-- Previous
nnoremap([[bp]], [[:bprevious<CR>]])
-- Next
nnoremap([[bn]], [[:bnext<CR>]])
-- List
nnoremap([[bl]], [[:ls<CR>]])
-- Delete
nnoremap([[bd]], [[:bp <BAR> bd #<CR>]])

-- Delete all buffers except Currenly Open
nnoremap([[bq]],[[:w <bar> %bd <bar> e# <bar> bd# <CR>]])

-- TAB in normal mode will move to text buffer
nnoremap("<TAB>", ":bnext<CR>")
-- SHIFT-TAB will go back
nnoremap("<S-TAB>", ":bprevious<CR>")