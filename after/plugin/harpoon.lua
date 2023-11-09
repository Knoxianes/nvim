local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
require("telescope").load_extension('harpoon')
vim.keymap.set("n", "<leader>a", mark.add_file,{desc='Harpoon add file'})
vim.keymap.set("n", "<leader>c", mark.clear_all,{desc='Harpoon clear all'})
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu,{desc='Harpoon menu'})
vim.keymap.set("n", "<leader>pm", "<cmd>Telescope harpoon marks<CR>")
vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end,{desc='Harpoon go to 1'})
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end,{desc='Harpoon go to 2'})
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end,{desc='Harpoon go to 3'})
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end,{desc='Harpoon go to 4'})
vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end,{desc='Harpoon go to 5'})
vim.keymap.set("n", "<leader>z", function() ui.nav_prev() end,{desc='Harpoon go to prev'})
