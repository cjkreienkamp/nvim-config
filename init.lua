require("core.options") -- Load general options
require("core.keymaps") -- Load general keymaps
require("core.snippets") -- Custom code snippets

-- Set up the Lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Set up plugins
require("lazy").setup({
	require("plugins.neotree"),
<<<<<<< HEAD
	require("plugins.colortheme_moonlight"),
=======
	require("plugins.colortheme_nord"),
>>>>>>> d0398f6 (only added files currently used in init.lua)
	require("plugins.bufferline"),
	require("plugins.lualine"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
<<<<<<< HEAD
	-- require("plugins.lsp"),
	-- require("plugins.autocompletion"),
	-- require("plugins.none-ls"),
	-- require("plugins.gitsigns"),
=======
>>>>>>> d0398f6 (only added files currently used in init.lua)
	require("plugins.alpha"),
	require("plugins.indent-blankline"),
	require("plugins.misc"),
	require("plugins.comment"),
  require("plugins.noice"),
<<<<<<< HEAD
	-- require("plugins.copilot"),
	-- require("plugins.chatgpt"),
=======
>>>>>>> d0398f6 (only added files currently used in init.lua)
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
