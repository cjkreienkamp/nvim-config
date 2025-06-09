return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  config = function()
    require('noice').setup({
      cmdline = {
        view = "cmdline_popup",
      },
      views = {
        cmdline_popup = {
          position = {
            row = "40%",
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
          border = {
            style = "rounded",
            padding = { 1, 2 },
          },
          win_options = {
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
      },
      presets = {
        bottom_search = false,        -- use classic bottom cmdline for search
        command_palette = false,      -- position cmdline and popupmenu together
        long_message_to_split = true, -- long messages go to split
        inc_rename = false,           -- show inc_rename dialog
        lsp_doc_border = true,        -- add border to hover/signature help
      },
    })
  end,
}

