return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      filters = { custom = { "^.git$" } },
    })
    require("nvim-tree.api").tree.toggle({focus = false, find_file = true, })
  end
}
