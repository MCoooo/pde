local nnoremap = require("dave.keymap").nnoremap
local silent = { silent = true }
--
-- Terminal commands
--
-- -- ueoa is first through fourth finger left hand home row.
--
-- -- This just means I can crush, with opposite hand, the 4 terminal positions
--
-- --
--
-- -- These functions are stored in harpoon.  A plugn that I am developing
--
nnoremap("<C-h>a", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<C-h>e", function() require("harpoon.ui").toggle_quick_menu() end, silent)
nnoremap("<C-h>tc", function() require("harpoon.cmd-ui").toggle_quick_menu() end, silent)
nnoremap("<C-h>h", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<C-h>j", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<C-h>k", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<C-s>l", function() require("harpoon.ui").nav_file(4) end, silent)
