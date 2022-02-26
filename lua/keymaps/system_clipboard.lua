-- System Clipboard Paste like in MacOs and Linux
vim.cmd[[
    nnoremap <D-v> "+p
    inoremap <D-v> <c-r>+
    cnoremap <D-v> <c-r>+
    nnoremap <S-F12> "+p
    inoremap <S-F12> <c-r>+
    cnoremap <S-F12> <c-r>+
]]