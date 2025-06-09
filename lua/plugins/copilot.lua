return {
	{
		"zbirenbaum/copilot.lua",
		lazy = false,
		config = function()
			require("copilot").setup({
				suggestion = {
					enabled = true,
					auto_trigger = true,
					keymap = {
						accept = "<C-l>", -- Accept suggestion
						next = "<M-]>", -- Next suggestion
						prev = "<M-[>", -- Previous suggestion
						dismiss = "<C-]>",
					},
				},
				panel = { enabled = true },
			})
		end,
	},
}
