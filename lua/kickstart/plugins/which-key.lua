-- NOTE: Plugins can also be configured to run Lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `opts` key (recommended), the configuration runs
-- after the plugin has been loaded as `require(MODULE).setup(opts)`.

return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    opts = {
      -- delay between pressing a key and opening which-key (milliseconds)
      -- this setting is independent of vim.opt.timeoutlen
      delay = 0,
      icons = {
        -- set icon mappings to true if you have a Nerd Font
        mappings = vim.g.have_nerd_font,
        -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
        -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
        keys = vim.g.have_nerd_font and {} or {
          Up = '<Up> ',
          Down = '<Down> ',
          Left = '<Left> ',
          Right = '<Right> ',
          C = '<C-…> ',
          M = '<M-…> ',
          D = '<D-…> ',
          S = '<S-…> ',
          CR = '<CR> ',
          Esc = '<Esc> ',
          ScrollWheelDown = '<ScrollWheelDown> ',
          ScrollWheelUp = '<ScrollWheelUp> ',
          NL = '<NL> ',
          BS = '<BS> ',
          Space = '<Space> ',
          Tab = '<Tab> ',
          F1 = '<F1>',
          F2 = '<F2>',
          F3 = '<F3>',
          F4 = '<F4>',
          F5 = '<F5>',
          F6 = '<F6>',
          F7 = '<F7>',
          F8 = '<F8>',
          F9 = '<F9>',
          F10 = '<F10>',
          F11 = '<F11>',
          F12 = '<F12>',
        },
      },

      -- Document existing key chains
      spec = {
        -- Document existing key chains
        { '<leader>s', group = '[S]earch', icon = { icon = '', color = 'green' } },
        { '<leader>t', group = '[T]oggle', icon = { icon = '󰔢', color = 'purple' } },
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
        { 'gr', group = 'LSP', icon = { icon = '', color = 'cyan' } },

        -- Document custom key chains and set icons
        -- Diffview
        { '<leader>g', group = '[G]it Diffview', icon = { icon = '󰊢', color = 'orange' } },
        { '<leader>gd', group = '[G]it [D]iff' },
        { '<leader>gh', group = '[G]it [H]istory ' },

        -- Marks
        { '<leader>m', group = '[M]arks', icon = { icon = '󰍎', color = 'yellow' } },
        { '<leader>md', icon = { icon = '󰼊', color = 'red' } },
        { '<leader>ms', icon = { icon = '', color = 'green' } },
        { '<leader>mt', icon = { icon = '󰔢', color = 'purple' } },

        -- Neoclip
        { '<leader>p', icon = { icon = '󰆒', color = 'cyan' } },

        -- Multicursor
        { '<leader><up>', icon = { icon = '󰞕', color = 'blue' } },
        { '<leader><down>', icon = { icon = '󰞒', color = 'blue' } },

        -- Unsaved
        { '<leader>u', group = '[U]nsaved changes', icon = { icon = '󱙃', color = 'yellow' } },
        { '<leader>us', icon = { icon = '󰱼', color = 'green' } },
        { '<leader>ua', icon = { icon = '󱇧', color = 'cyan' } },
        { '<leader>ud', icon = { icon = '󰣜', color = 'red' } },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
