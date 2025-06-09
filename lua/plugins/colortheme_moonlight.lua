return {
  'shaunsingh/moonlight.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    -- Example config in lua
    vim.g.moonlight_contrast = true
    vim.g.moonlight_borders = false
    vim.g.moonlight_disable_background = false 
    vim.g.moonlight_italic = false
    vim.g.moonlight_uniform_diff_background = true
    vim.g.moonlight_bold = false

    -- Load the colorscheme
    require('moonlight').set()

    -- Toggle background transparency
    local bg_transparent = true

    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      vim.g.moonlight_disable_background = bg_transparent
      vim.cmd [[colorscheme moonlight]]
    end

    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
  end,
}
