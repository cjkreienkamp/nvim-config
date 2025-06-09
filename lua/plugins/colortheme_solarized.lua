return {
  'shaunsingh/solarized.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    -- Example config in lua
    vim.o.background = "light"
    vim.g.solarized_contrast = true
    vim.g.solarized_borders = false
    vim.g.solarized_disable_background = false 
    vim.g.solarized_italic = false
    vim.g.solarized_uniform_diff_background = true
    vim.g.solarized_bold = false

    -- Load the colorscheme
    require('solarized').set()

    -- Toggle background transparency
    local bg_transparent = true

    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      vim.g.solarized_disable_background = bg_transparent
      vim.cmd [[colorscheme solarized]]
    end

    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
  end,
}
