return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require'nvim-tree'.setup{
      filters = { custom = { '^.git$' } },
      update_focused_file = {
        enable = true,
        update_root = false,
        ignore_list = {}
      },
      renderer = {
        icons = {
          glyphs = {
            git = {
              unstaged = '󰅖',
              renamed = '',
            }
          }
        }
      }
    }
  end
}
