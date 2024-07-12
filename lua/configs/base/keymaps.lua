local keymaps = {}

keymaps["normal"] = {
    { "<Esc>", "<Esc>:noh<CR>", "Esc" }, -- Remove highlight after search
    { "j", "gj", "j" }, -- Re-map j
    { "k", "gk", "k" }, -- Re-map k
    { "<C-d>", "<C-d>zz", "C-d" }, -- Re-map C-d
    { "<C-u>", "<C-u>zz", "C-u" }, -- Re-map C-u
    { "<C-f>", "<C-f>zz", "C-f" }, -- Re-map C-f
    { "<C-b>", "<C-b>zz", "C-b" }, -- Re-map C-b
    { "<C-c>N", ":enew<CR>", "Create empty buffer" }, -- Create empty buffer
    { "<C-c>s", ":Save<CR>", "Save" }, -- Save
    { "<C-c>a", ":wa<CR>", "Save all" }, -- Save all
    { "<C-c>e", ":Quit<CR>", "Close LvimIDE" }, -- Close all, exit nvim
    { "<C-c>x", "<C-w>c", "Close current window" }, -- Close current window
    { "<C-c>o", "<C-w>o", "Close other windows" }, -- Close other windows
    { "<C-c>d", ":bdelete<CR>", "Delete buffer" }, -- BDelete
    { "<C-c>=", ":wincmd=<CR>", "Win resize =" }, -- Win resize =
    { "<C-h>", "<C-w>h", "Move to window left" }, -- Move to window left
    { "<C-l>", "<C-w>l", "Move to window right" }, -- Move to window right
    { "<C-j>", "<C-w>j", "Move to window down" }, -- Move to window down
    { "<C-k>", "<C-w>k", "Move to window up" }, -- Move to window up
    { "<C-Left>", ":vertical resize -2<CR>", "Resize width -" }, -- Resize width -
    { "<C-Right>", ":vertical resize +2<CR>", "Resize width +" }, -- Resize width +
    { "<C-Up>", ":resize -2<CR>", "Resize height -" }, -- Resize height -
    { "<C-Down>", ":resize +2<CR>", "Resize height +" }, -- Resize height +
    { "<C-c>n", ":tabn<CR>", "Tab next" }, -- Tab next
    { "<C-c>p", ":tabp<CR>", "Tab prev" }, -- Tab prev
    { "<C-c>ff", ":CloseFloatWindows<CR>", "Close float windows" }, -- Close float windows
    { "<C-c>c", ":Inspect<CR>", "Inspect" }, -- Inspect
    {'<Space>', 'viw', "Select word"},
}

keymaps["visual"] = {
    { "j", "gj" }, -- Re-map j
    { "k", "gk" }, -- Re-map k
    { "*", "<Esc>/\\%V" }, -- Visual search /
    { "#", "<Esc>?\\%V" }, -- Visual search ?
}

keymaps["insert"] = {}


-- Add another mappings by hand.
vim.keymap.set('c','<c-n>', function() return vim.fn.wildmenumode() == 1 and '<c-n>' or '<down>' end, {expr = true, desc = 'If wildmenu then do down instead of c-n'})
vim.keymap.set('c','<c-p>', function() return vim.fn.wildmenumode() == 1 and '<c-p>' or '<up>' end, {expr = true, desc = 'If wildmenu then do up instead of c-p'})
-- <C-l> redraws the screen in normal mode, this redraws and eliminates highlight
vim.keymap.set('n','<c-l>',':nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>', {desc = 'Redraw and remove highlight'})

-- Save file
vim.keymap.set('n','wf',':w<CR>', {desc = 'Save file'})

-- Escape from insert mode with kj
-- Do not do this in visual mode (interferes with selection)
-- or command mode (doesn't allow searching for kj)
vim.keymap.set('i','kj','<esc>:w<CR>', {desc = 'Save file'})


-- Open help in vertical split in the Right
-- Combine vertical[vert] and botright[bo] commands
vim.keymap.set('n','<leader>vh',':vertical botright help<CR>', {desc = 'Vertical help'})
-- Switch horizontal split to vertical
-- Add <C-w>R to rotate it at the end
vim.keymap.set('n','<leader>htv','<C-w>t<C-w>H<C-w>R', {desc = 'Change horizontal split to vertical'})

-- Switch vertical split to horizontal
vim.keymap.set('n','<leader>vth','<C-w>t<C-w>K<C-w>R', {desc = 'Change vertical split to horizontal'})

-- nnoremap <leader>mm :make<CR>
-- nnoremap <leader>ma :AsyncRun :make<CR>
-- nnoremap <C-x><C-x><C-b> :AsyncRun cd\ $EMV_HOME\ &&\ bms\ build\ -b\ &&\ bms\ test<CR>

-- Select inner word.
vim.keymap.set('n','<space>','viw', {desc = 'Select inner word'})

-- #Seleccionar e indentar.
vim.keymap.set('n', '<c-k><c-f>', 'vi{=', {desc = 'indent inside braces'})
-- Buffers
vim.keymap.set('n','bn',':bn<cr>', {desc = 'Next buffer'})
vim.keymap.set('n','bp',':bp<cr>', {desc = 'Previous buffer'})
vim.keymap.set('n','bf',':bf<cr>', {desc = 'First buffer'})
vim.keymap.set('n','bl',':bl<cr>', {desc = 'Last buffer'})
vim.keymap.set('n','bd',':bd<cr>', {desc = 'Delete buffer'})
-- Quickfix list
vim.keymap.set('n','cn',':cn<cr>', {desc = 'Next result'})
vim.keymap.set('n','cp',':cp<cr>', {desc = 'Previous result'})
vim.keymap.set('n','cf',':cfirst<cr>', {desc = 'First result'})
vim.keymap.set('n','cl',':clast<cr>', {desc = 'Last result'})
vim.keymap.set('n','co',':copen<cr>', {desc = 'Open quicfix list'})
vim.keymap.set('n','cq',':cclose<cr>', {desc = 'Close quickfix list'})
-- Location list
-- vim.keymap.set('n','ln',':lne<cr>', {desc = 'Change vertical split to horizontal'})
-- vim.keymap.set('n','lp',':lp<cr>', {desc = 'Change vertical split to horizontal'})

-- Edit and source vimrc
vim.keymap.set('n','<leader>sv',':source $MYVIMRC<CR>', {desc = 'Source vimrc file'})
vim.keymap.set('n','<leader>ev',':e $MYVIMRC<CR>', {desc = 'Change vimrc file'})

-- Make and recover default session.
vim.keymap.set('n','<F3>',': mksession! /home/$USER/.vim/files/nacho_vim_session<CR>', {desc = 'Make the default session'})
vim.keymap.set('n','<F4>',': source! /home/$USER/.vim/files/nacho_vim_session<CR>', {desc = 'Source the default session'})

-- Save in insert mode
vim.keymap.set('i','kj','<Esc>:w<CR>', {desc='Save in insert mode'})

--Save in normal mode
vim.keymap.set('n', 'wf', ':w<CR>', {desc = 'Save in normal mode'})



-- Go only to matches in this file, does the same with both mappings
-- nnoremap ]g :execute "g/\\<" . expand("<cword>") . "\\>"<CR>:let nr = input("Which one: ")<Bar>exe "normal " . nr ."G"<CR>
-- nnoremap [g :execute "g/\\<" . expand("<cword>") . "\\>"<CR>
vim.keymap.set('n', ']g', ':execute "g/\\<" . expand("<cword>") . "\\>"<CR>:let nr = input("Which one: ")<Bar>exe "normal " . nr ."G"<CR>', {desc = 'Find references in file'})
vim.keymap.set('n', '[g', ':execute "g/\\<" . expand("<cword>") . "\\>"<CR>', {desc = 'Find references in file'})

return keymaps
