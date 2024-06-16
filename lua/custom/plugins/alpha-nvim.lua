return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    --Set Header
    -- dashboard.section.header.val = {
    --   '                                                     ',
    --   '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
    --   '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
    --   '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
    --   '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
    --   '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
    --   '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
    --   '                                                     ',
    -- }

    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
    }

    -- Set menu
    dashboard.section.buttons.val = {
      -- Create a new file and enter insert mode immediately
      dashboard.button('e', '  > New File', ':ene <BAR> startinsert <CR>'),

      -- Change directory to the specified path and open Telescope to find files
      dashboard.button('f', '  > Find File (Desktop)', ':cd C:\\Users\\61240\\OneDrive\\Laptop Backup\\Desktop | Telescope find_files<CR>'),

      -- Change directory to the specified path and open Telescope to find files
      dashboard.button('c', '  > Find File (Config)', ':cd C:\\Users\\61240\\AppData\\Local\\nvim | Telescope find_files<CR>'),

      -- Open Telescope to show recent files
      dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),

      -- Open the Vim configuration file and split the window
      dashboard.button('s', '  > Settings', ':e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>'),

      -- Quit Neovim
      dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
    }

    alpha.setup(dashboard.opts)
  end,
}
